/**
 * @id STM_08_06_029_RUNTIME_DO_WHILE_LABEL
 * @expect runtime
 * @section 8.6
 * @design 带 label 的 do-while

 * @note 运行时用例：实际执行验证labeled do-while
 */
function main(): void {
  let x: int = 0
  dl: do { x++; if (x == 5) break dl } while (true)
  if (x != 5) { throw new Error("assertion: do-while with label") }
  console.log("verified")
}
