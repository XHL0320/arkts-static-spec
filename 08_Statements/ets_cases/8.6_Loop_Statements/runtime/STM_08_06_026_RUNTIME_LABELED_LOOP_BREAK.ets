/**
 * @id STM_08_06_026_RUNTIME_LABELED_LOOP_BREAK
 * @expect runtime
 * @section 8.6
 * @design 带 label 的循环 break 运行时验证

 * @note 运行时用例：实际执行验证labeled break
 */
function main(): void {
  let a: int = 0
  outer: for (let i: int = 0; i < 10; i++) {
    for (let j: int = 0; j < 10; j++) {
      a++
      if (i == 0 && j == 2) break outer
    }
  }
  if (a != 3) { throw new Error("assertion: break outer after 3 iterations") }
  console.log("verified")
}
