/**
 * @id STM_08_11_021_PASS_CONTINUE_LABELED
 * @expect compile-pass
 * @section 8.11
 * @design 带 label 的 continue
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testContinueLabeled(): void {
  let a: int = 0
  outer: for (let i: int = 0; i < 3; i++) {
    for (let j: int = 0; j < 3; j++) { if (j == 1) continue outer; a++ } }
  console.log(a.toString())
}
