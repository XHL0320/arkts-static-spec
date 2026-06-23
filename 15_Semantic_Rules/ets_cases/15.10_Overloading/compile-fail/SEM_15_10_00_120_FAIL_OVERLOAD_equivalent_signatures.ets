/*
 * @id SEM_15_10_00_120_FAIL_OVERLOAD_equivalent_signatures
 * @expect compile-fail
 * @section 15.10.4
 * @design 规范 15.10.4：如果两个隐式重载函数的签名是重载等价的，则发生编译时错误
 * @note 测试重载等价签名（应该编译失败）
 */

// 测试重载等价签名（编译失败）
// 注意：ArkTS 可能不支持泛型擦除后的签名比较，所以这个测试可能需要调整

function foo(x: Array<string>): string {
  return x[0]
}

// 编译失败：重载等价签名（Array<string> 和 Array<number> 擦除后都是 Array）
function foo(x: Array<number>): number {
  return x[0]
}

function test_overload_equivalent_signatures(): void {
  // 这个代码不应该编译成功
  console.log("This should not compile")
}
