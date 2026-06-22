/**
 * @id STM_08_14_030_RUNTIME_RETHROW
 * @expect runtime
 * @section 8.14
 * @design catch 中重新 throw 被外层 catch 捕获
 * @note 运行时用例：实际执行验证重新 throw 被外层捕获
 */
function main(): void {
  let reCaught: boolean = false
  try { try { throw new Error("inner") } catch (e) { throw e } }
  catch (e) { reCaught = true }
  if (!reCaught) { throw new Error("assertion: re-caught") }
  console.log("verified")
}
