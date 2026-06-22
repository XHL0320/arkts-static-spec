/**
 * @id STM_08_15_026_FAIL_TRY_NO_CATCH_NO_FINALLY
 * @expect compile-fail
 * @section 8.15
 * @design try 无 catch 无 finally 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTryNoCatchNoFinallyFail(): void {
  try { console.log("bad") }
}
