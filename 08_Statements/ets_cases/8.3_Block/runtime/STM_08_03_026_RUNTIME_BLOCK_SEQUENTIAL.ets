/**
 * @id STM_08_03_026_RUNTIME_BLOCK_SEQUENTIAL
 * @expect runtime
 * @section 8.3
 * @design 块语句顺序执行验证

 * @note 运行时用例：实际执行验证块顺序执行
 */
function main(): void {
  let trace: string = ""
  { trace = trace + "A" }
  { trace = trace + "B"
    { trace = trace + "C" } }
  if (trace != "ABC") { throw new Error("assertion: block sequential") }
  console.log("verified")
}
