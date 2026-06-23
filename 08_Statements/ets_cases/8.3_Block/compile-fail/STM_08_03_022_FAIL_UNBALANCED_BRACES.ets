/**
 * @id STM_08_03_022_FAIL_UNBALANCED_BRACES
 * @expect compile-fail
 * @section 8.3
 * @design 不匹配的大括号应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testUnbalancedBracesFail(): void {
  let x: int = 0
  { x = 1
  console.log(x.toString())
}
