/**
 * @id STM_08_03_023_FAIL_BLOCK_AS_EXPR
 * @expect compile-fail
 * @section 8.3
 * @design 块不能作为表达式使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBlockAsExprFail(): void {
  let x: int = { 1 + 2 }
  console.log(x.toString())
}
