/*
 * @id SEM_15_11_007_PASS_OVERLOAD_warning
 * @expect compile-pass
 * @section 15.11.7
 * @design 规范 15.11.7：如果重载集中的某个重载实体永远不会被调用，则发出编译时警告
 * @note 测试重载集警告：模糊调用
 */

// 测试重载集警告：模糊调用
function f1(p: number): void {
  console.log("f1: number")
}

function f2(p: number | string): void {
  console.log("f2: number|string")
}

function f3(p: string): void {
  console.log("f3: string")
}

// 显式重载声明
overload foo { f1, f2, f3 }

function test_overload_warning(): void {
  // f3 永远不会被调用，因为 f2 可以接受 string
  foo(5)  // 调用 f1()
  foo("5")  // 调用 f2()，因为 f2 在 f3 之前
  
  console.log("Overload warning test passed (check warnings)")
}
