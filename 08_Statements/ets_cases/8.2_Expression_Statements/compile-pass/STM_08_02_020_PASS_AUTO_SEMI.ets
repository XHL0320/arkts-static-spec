/**
 * @id STM_08_02_020_FAIL_EXPR_STMT_NO_SEMI
 * @expect compile-pass
 * @section 8.2
 * @design 缺少分号的表达式语句应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testNoSemiFail(): void {
  let x: int = 5
  x + 1
  console.log(x.toString())
}
