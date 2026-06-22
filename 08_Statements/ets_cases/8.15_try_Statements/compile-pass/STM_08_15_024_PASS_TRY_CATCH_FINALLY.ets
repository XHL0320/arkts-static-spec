/**
 * @id STM_08_15_024_PASS_TRY_CATCH_FINALLY
 * @expect compile-pass
 * @section 8.15
 * @design try-catch-finally 完整结构
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryCatchFinally(): void {
  try { let x: int = 1 } catch (e) { console.log("catch") } finally { console.log("finally") }
}
