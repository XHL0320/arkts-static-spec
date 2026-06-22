/**
 * @id STM_08_11_027_RUNTIME_CONTINUE_LABELED_OUTER
 * @expect runtime
 * @section 8.11
 * @design continue label 跳到外层循环

 * @note 运行时用例：实际执行验证跳到外层
 */
function main(): void {
  let innerCount: int = 0
  outer: for (let i: int = 0; i < 3; i++) {
    for (let j: int = 0; j < 5; j++) { innerCount++; if (j == 1) continue outer } }
  if (innerCount != 6) { throw new Error("assertion: 3 outer * 2 inner = 6") }
  console.log("verified")
}
