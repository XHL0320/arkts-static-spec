/**
 * @id STM_08_11_028_RUNTIME_CONTINUE_ODD_ONLY
 * @expect runtime
 * @section 8.11
 * @design continue 收集奇数

 * @note 运行时用例：实际执行验证收集奇数
 */
function main(): void {
  let oddSum: int = 0
  for (let i: int = 1; i <= 10; i++) { if (i % 2 == 0) continue; oddSum = oddSum + i }
  if (oddSum != 25) { throw new Error("assertion: 1+3+5+7+9=25") }
  console.log("verified")
}
