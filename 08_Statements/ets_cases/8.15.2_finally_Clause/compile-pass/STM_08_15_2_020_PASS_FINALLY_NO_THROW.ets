/**
 * @id STM_08_15_2_020_PASS_FINALLY_NO_THROW
 * @expect compile-pass
 * @section 8.15.2
 * @design try-finally 无异常正常执行
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testFinallyNoThrow(): void {
  let ran: boolean = false
  try { console.log("try") } finally { ran = true }
}
