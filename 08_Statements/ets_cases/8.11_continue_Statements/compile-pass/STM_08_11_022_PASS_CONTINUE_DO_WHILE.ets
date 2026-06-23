/**
 * @id STM_08_11_022_PASS_CONTINUE_DO_WHILE
 * @expect compile-pass
 * @section 8.11
 * @design do-while 循环中使用 continue
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testContinueDoWhile(): void {
  let i: int = 0; let sum: int = 0
  do { i++; if (i % 2 == 0) continue; sum = sum + i } while (i < 10)
  console.log(sum.toString())
}
