/**
 * @id STM_08_10_022_PASS_BREAK_WITH_LABEL_NESTED
 * @expect compile-pass
 * @section 8.10
 * @design 嵌套循环中使用带 label 的 break
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBreakWithLabelNested(): void {
  let a: int = 0
  outer: for (let i: int = 0; i < 3; i++) {
    for (let j: int = 0; j < 3; j++) { a++; if (j == 1) break outer } }
  console.log(a.toString())
}
