/**
 * @id STM_08_02_025_FAIL_BINARY_EXPR_INVALID
 * @expect compile-pass
 * @section 8.2
 * @design 无效二元运算表达式语句应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testBinaryInvalidFail(): void {
  let x: string = "hello"
  x + 5
  console.log(x)
}
