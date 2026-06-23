/**
 * @id STM_08_15_1_028_RUNTIME_CATCH_NO_ERROR
 * @expect runtime
 * @section 8.15.1
 * @design 无异常时 catch 块不执行

 * @note 运行时用例：实际执行验证catch不执行
 */
function main(): void {
  let caught: boolean = false
  try { let x: int = 1 } catch (e) { caught = true }
  if (caught) { throw new Error("assertion: catch should NOT run") }
  console.log("verified")
}
