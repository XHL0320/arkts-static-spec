/**
 * @id STM_08_15_023_PASS_TRY_FINALLY
 * @expect compile-pass
 * @section 8.15
 * @design try-finally 无 catch
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryFinally(): void {
  let ran: boolean = false
  try { ran = true } finally { console.log("finally") }
}
