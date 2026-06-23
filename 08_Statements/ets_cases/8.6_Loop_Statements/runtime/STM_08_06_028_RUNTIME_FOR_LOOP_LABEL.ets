/**
 * @id STM_08_06_028_RUNTIME_FOR_LOOP_LABEL
 * @expect runtime
 * @section 8.6
 * @design 简单 for 循环带 label

 * @note 运行时用例：实际执行验证simple labeled for
 */
function main(): void {
  let sum: int = 0
  calc: for (let i: int = 1; i <= 5; i++) { sum = sum + i }
  if (sum != 15) { throw new Error("assertion: sum 1..5 = 15") }
  console.log("verified")
}
