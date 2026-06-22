/**
 * @id STM_08_15_1_026_FAIL_CATCH_AS_EXPR
 * @expect compile-fail
 * @section 8.15.1
 * @design catch 作为表达式应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchAsExprFail(): void {
  let x: int = try { 1 } catch (e) { 0 }
  console.log(x.toString())
}
