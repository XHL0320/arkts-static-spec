/**
 * @id STM_08_15_2_028_RUNTIME_FINALLY_ALWAYS_RUNS
 * @expect runtime
 * @section 8.15.2
 * @design finally 在异常时仍然运行

 * @note 运行时用例：实际执行验证finally始终运行
 */
function main(): void {
  let ran: boolean = false
  try { throw new Error() } catch (e) { console.log("caught") } finally { ran = true }
  if (!ran) { throw new Error("assertion: finally should run") }
  console.log("verified")
}
