/**
 * @id STM_08_15_030_RUNTIME_TRY_FINALLY_ALWAYS
 * @expect runtime
 * @section 8.15
 * @design finally 在异常发生时仍然执行

 * @note 运行时用例：实际执行验证finally始终
 */
function main(): void {
  let finallyRan: boolean = false
  try { throw new Error() } catch (e) { console.log("caught") } finally { finallyRan = true }
  if (!finallyRan) { throw new Error("assertion: finally should run") }
  console.log("verified")
}
