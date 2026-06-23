/**
 * @id STM_08_06_027_RUNTIME_LABELED_CONTINUE
 * @expect runtime
 * @section 8.6
 * @design 带 label 的 continue 运行时验证

 * @note 运行时用例：实际执行验证labeled continue
 */
function main(): void {
  let count: int = 0
  outer: for (let i: int = 0; i < 3; i++) {
    for (let j: int = 0; j < 3; j++) {
      if (j == 1) continue outer
      count++
    }
  }
  if (count != 3) { throw new Error("assertion: continue outer") }
  console.log("verified")
}
