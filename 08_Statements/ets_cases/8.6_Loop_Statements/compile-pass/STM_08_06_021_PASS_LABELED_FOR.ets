/**
 * @id STM_08_06_021_PASS_LABELED_FOR
 * @expect compile-pass
 * @section 8.6
 * @design 带 label 的 for 循环配合 break
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLabeledFor(): void {
  let count: int = 0
  outer: for (let i: int = 0; i < 5; i++) {
    for (let j: int = 0; j < 5; j++) {
      if (j == 2) break outer
      count++
    }
  }
  console.log(count.toString())
}
