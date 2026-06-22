/**
 * @id STM_08_05_035_RUNTIME_IF_ELSE_CHAIN
 * @expect runtime
 * @section 8.5
 * @design if-else if-else 链式判断

 * @note 运行时用例：实际执行验证if-else链
 */
function main(): void {
  let val: int = 85
  let grade: string
  if (val >= 90) { grade = "A" }
  else if (val >= 80) { grade = "B" }
  else { grade = "C" }
  if (grade != "B") { throw new Error("assertion: 85 should be B") }
  console.log("verified")
}
