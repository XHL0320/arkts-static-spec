/**
 * @id EXP2_17_01_01_003_PASS_HEX_ESCAPE
 * @expect compile-pass
 * @section 17.1.1
 * @design 十六进制转义字面量：验证 c'\xHH' 格式的十六进制转义序列
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testHexEscapeLiteral(): void {
  let hexA: char = c'\x41'   // 'A'
  let hexDEL: char = c'\x7F'  // DEL
  let hexNUL: char = c'\x00'  // NUL
  let hexMax: char = c'\xFF'  // max byte value
  console.log(hexA)
  console.log(hexDEL)
  console.log(hexNUL)
  console.log(hexMax)
}
