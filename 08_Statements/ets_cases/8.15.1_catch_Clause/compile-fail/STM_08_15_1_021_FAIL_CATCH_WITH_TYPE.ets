/**
 * @id STM_08_15_1_021_FAIL_CATCH_WITH_TYPE
 * @expect compile-fail
 * @section 8.15.1
 * @design catch 带类型标注已弃用应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchWithTypeFail(): void {
  try { throw new Error() } catch (e: Error) { console.log("bad") }
}
