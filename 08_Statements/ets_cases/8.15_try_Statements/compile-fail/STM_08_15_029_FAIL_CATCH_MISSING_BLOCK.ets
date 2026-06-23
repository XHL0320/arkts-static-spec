/**
 * @id STM_08_15_029_FAIL_CATCH_MISSING_BLOCK
 * @expect compile-fail
 * @section 8.15
 * @design catch 缺少块体应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchMissingBlockFail(): void {
  try { throw new Error() } catch (e)
}
