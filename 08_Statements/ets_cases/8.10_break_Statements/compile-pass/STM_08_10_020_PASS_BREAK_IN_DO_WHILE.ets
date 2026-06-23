/**
 * @id STM_08_10_020_PASS_BREAK_IN_DO_WHILE
 * @expect compile-pass
 * @section 8.10
 * @design do-while 循环中使用 break
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBreakInDoWhile(): void {
  let x: int = 0
  do { x++; if (x == 3) break } while (x < 10)
  console.log(x.toString())
}
