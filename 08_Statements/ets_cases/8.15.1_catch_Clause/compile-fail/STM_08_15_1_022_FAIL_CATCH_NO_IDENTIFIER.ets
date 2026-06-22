/**
 * @id STM_08_15_1_022_FAIL_CATCH_NO_IDENTIFIER
 * @expect compile-fail
 * @section 8.15.1
 * @design catch 缺少标识符应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchNoIdentifierFail(): void {
  try { throw new Error() } catch { console.log("bad") }
}
