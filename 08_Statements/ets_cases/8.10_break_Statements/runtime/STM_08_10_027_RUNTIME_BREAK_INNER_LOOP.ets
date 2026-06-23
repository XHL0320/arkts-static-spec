/**
 * @id STM_08_10_027_RUNTIME_BREAK_INNER_LOOP
 * @expect runtime
 * @section 8.10
 * @design break 只退出最内层循环

 * @note 运行时用例：实际执行验证内层break
 */
function main(): void {
  let outerCount: int = 0; let total: int = 0
  for (let i: int = 0; i < 3; i++) {
    outerCount++
    for (let j: int = 0; j < 10; j++) { total++; if (j == 1) break }
  }
  if (outerCount != 3) { throw new Error("assertion: outer should run 3 times") }
  console.log("verified")
}
