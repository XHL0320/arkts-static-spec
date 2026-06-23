/**
 * @id STM_08_10_029_RUNTIME_BREAK_SWITCH
 * @expect runtime
 * @section 8.10
 * @design switch 中使用 break 退出

 * @note 运行时用例：实际执行验证switch break
 */
function main(): void {
  let val: int = 2; let result: string = ""
  switch (val) { case 1: result = "one"; break; case 2: result = "two"; break; default: result = "other" }
  if (result != "two") { throw new Error("assertion: switch break") }
  console.log("verified")
}
