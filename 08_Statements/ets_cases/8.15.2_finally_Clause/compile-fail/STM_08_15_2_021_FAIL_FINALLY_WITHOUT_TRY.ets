/**
 * @id STM_08_15_2_021_FAIL_FINALLY_WITHOUT_TRY
 * @expect compile-fail
 * @section 8.15.2
 * @design finally 在 try 外使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyWithoutTryFail(): void {
  finally { console.log("bad") }
}
