/*
 * @id SEM_15_07_00_016_PASS_infer_from_initializer
 * @expect compile-pass
 * @section 15.7
 * @design 规范 15.7：从初始化器推断变量类型
 * @note 测试从初始化表达式推断变量类型：int 和 string 字面量推断
 */

// 测试从初始化器推断变量类型
function test_infer_from_initializer(): void {
  let x = 42        // 推断为 int
  let y = "infer"   // 推断为 string
  let z: int = x
  let w: string = y

  console.log(`${z} ${w}`)
}
