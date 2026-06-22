/**
 * @id STM_08_15_1_025_FAIL_CATCH_VAR_ESCAPE
 * @expect compile-fail
 * @section 8.15.1
 * @design catch 标识符在 catch 块外使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchVarEscapeFail(): void {
  try { throw new Error() } catch (e) { console.log("caught") }
  console.log(e.toString())
}
