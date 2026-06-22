/**
 * @id STM_08_06_022_PASS_LABELED_WHILE
 * @expect compile-pass
 * @section 8.6
 * @design 带 label 的 while 循环
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLabeledWhile(): void {
  let count: int = 0
  myLoop: while (count < 10) {
    count++
    if (count == 5) break myLoop
  }
  console.log(count.toString())
}
