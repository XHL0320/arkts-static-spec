/**
 * @id LEX_02_01_007_PASS_CHAR_BMP
 * @expect compile-pass
 * @section 2.1
 * @design BMP char字面量: c'...'语法、\uHHHH转义、\xHH转义、特殊转义序列(\n \t \r) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCharBMP(): void {
  let ch1: char = c'A'
  let ch2: char = c'\u0041'
  let ch3: char = c'\x41'
  let newline: char = c'\n'
  let tab: char = c'\t'
  let ret: char = c'\r'
  let nullCh: char = c'\u0000'
}
