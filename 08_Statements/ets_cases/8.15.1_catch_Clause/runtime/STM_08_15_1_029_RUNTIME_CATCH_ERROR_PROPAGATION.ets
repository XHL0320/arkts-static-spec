/**
 * @id STM_08_15_1_029_RUNTIME_CATCH_ERROR_PROPAGATION
 * @expect runtime
 * @section 8.15.1
 * @design 内层 catch 未捕获的错误向外传播

 * @note 运行时用例：实际执行验证错误传播
 */
function main(): void {
  let outerCaught: boolean = false
  try { try { throw new Error() } catch (e) { throw e } } catch (e) { outerCaught = true }
  if (!outerCaught) { throw new Error("assertion: outer catch") }
  console.log("verified")
}
