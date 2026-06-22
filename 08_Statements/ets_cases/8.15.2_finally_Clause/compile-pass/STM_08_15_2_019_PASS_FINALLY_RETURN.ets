/**
 * @id STM_08_15_2_019_PASS_FINALLY_RETURN
 * @expect compile-pass
 * @section 8.15.2
 * @design finally 块中的 return
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testFinallyReturn(): int {
  try { return 1 } finally { console.log("finally") }
  return 2
}
function testCallFinallyReturn(): void {
  let r: int = testFinallyReturn()
  console.log(r.toString())
}
