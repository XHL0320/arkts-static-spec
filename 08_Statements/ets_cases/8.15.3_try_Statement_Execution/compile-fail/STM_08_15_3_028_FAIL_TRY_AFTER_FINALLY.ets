/**
 * @id STM_08_15_3_028_FAIL_TRY_AFTER_FINALLY
 * @expect compile-fail
 * @section 8.15.3
 * @design try-finally 后不能有 catch
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTryAfterFinallyFail(): void {
  try { console.log("try") } finally { console.log("f") } catch (e) { console.log("c") }
}
