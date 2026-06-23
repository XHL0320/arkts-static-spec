/**
 * @id STM_08_15_2_024_FAIL_FINALLY_MISSING_BLOCK
 * @expect compile-fail
 * @section 8.15.2
 * @design finally 缺少块体应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyMissingBlockFail(): void {
  try { console.log("try") } finally
}
