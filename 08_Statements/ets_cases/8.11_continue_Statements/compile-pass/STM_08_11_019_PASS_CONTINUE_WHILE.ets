/**
 * @id STM_08_11_019_PASS_CONTINUE_WHILE
 * @expect compile-pass
 * @section 8.11
 * @design while 循环中使用 continue
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testContinueWhile(): void {
  let sum: int = 0; let i: int = 0
  while (i < 10) { i++; if (i % 2 == 0) continue; sum = sum + i }
  console.log(sum.toString())
}
