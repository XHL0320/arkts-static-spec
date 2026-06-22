/**
 * @id STM_08_11_029_RUNTIME_CONTINUE_DO_WHILE_CHECK
 * @expect runtime
 * @section 8.11
 * @design continue 在 do-while 中仍然检查条件

 * @note 运行时用例：实际执行验证continue+条件检查
 */
function main(): void {
  let i: int = 0; let count: int = 0
  do { i++; if (i > 10) continue; count++ } while (i < 15)
  if (count != 10) { throw new Error("assertion: count stops at 10") }
  console.log("verified")
}
