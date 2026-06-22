/**
 * @id STM_08_15_3_029_RUNTIME_ABRUPT_TRY_PROPAGATION
 * @expect runtime
 * @section 8.15.3
 * @design 异常完成 try 向外部传播

 * @note 运行时用例：实际执行验证异常传播
 */
function main(): void {
  let outerCaught: boolean = false
  try { try { throw new Error() } finally { console.log("inner finally") } }
  catch (e) { outerCaught = true }
  if (!outerCaught) { throw new Error("assertion: outer should catch") }
  console.log("verified")
}
