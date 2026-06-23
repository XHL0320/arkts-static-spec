/**
 * @id EXP2_17_01_01_002_PASS_ESCAPE_SEQUENCE
 * @expect compile-pass
 * @section 17.1.1
 * @design 转义序列字面量：验证 c'\n', c'\t', c'\r', c'\\', c'\'' 等转义序列
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testEscapeSequenceLiteral(): void {
  let newline: char = c'\n'
  let tab: char = c'\t'
  let carriage_return: char = c'\r'
  let backslash: char = c'\\'
  let single_quote: char = c'\''
  // Also test c'\"' (double quote escape in char literal)
  let double_quote: char = c'"'
  console.log(newline)
  console.log(tab)
  console.log(carriage_return)
  console.log(backslash)
  console.log(single_quote)
  console.log(double_quote)
}
