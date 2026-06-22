/**
 * @id STM_08_11_026_RUNTIME_CONTINUE_SKIP
 * @expect runtime
 * @section 8.11
 * @design continue 跳过当前迭代

 * @note 运行时用例：实际执行验证跳过迭代
 */
function main(): void {
  let sum: int = 0
  for (let i: int = 0; i < 10; i++) { if (i == 5) continue; sum = sum + 1 }
  if (sum != 9) { throw new Error("assertion: should skip one iteration, sum=9") }
  console.log("verified")
}
