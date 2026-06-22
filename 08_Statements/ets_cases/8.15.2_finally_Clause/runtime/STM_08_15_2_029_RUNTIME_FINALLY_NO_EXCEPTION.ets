/**
 * @id STM_08_15_2_029_RUNTIME_FINALLY_NO_EXCEPTION
 * @expect runtime
 * @section 8.15.2
 * @design finally 在无异常时运行

 * @note 运行时用例：实际执行验证无异常finally
 */
function main(): void {
  let ran: boolean = false
  try { console.log("try") } finally { ran = true }
  if (!ran) { throw new Error("assertion: finally should run") }
  console.log("verified")
}
