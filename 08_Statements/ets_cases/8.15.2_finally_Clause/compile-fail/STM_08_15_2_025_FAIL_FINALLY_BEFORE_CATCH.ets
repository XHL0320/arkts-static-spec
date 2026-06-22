/**
 * @id STM_08_15_2_025_FAIL_FINALLY_BEFORE_CATCH
 * @expect compile-fail
 * @section 8.15.2
 * @design finally 在 catch 之前应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyBeforeCatchFail(): void {
  try { console.log("try") } finally { console.log("f") } catch (e) { console.log("c") }
}
