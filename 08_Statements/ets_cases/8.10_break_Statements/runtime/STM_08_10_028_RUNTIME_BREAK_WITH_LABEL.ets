/**
 * @id STM_08_10_028_RUNTIME_BREAK_WITH_LABEL
 * @expect runtime
 * @section 8.10
 * @design 带 label break 退出外层循环

 * @note 运行时用例：实际执行验证break label
 */
function main(): void {
  let count: int = 0
  outer: for (let i: int = 0; i < 5; i++) {
    for (let j: int = 0; j < 5; j++) { count++; if (i == 1 && j == 2) break outer } }
  if (count > 15) { throw new Error("assertion: break outer should exit early") }
  console.log("verified")
}
