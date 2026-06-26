/**
 * @id LEX_02_01_008_PASS_CHAR_SUPPLEMENTARY
 * @expect compile-pass
 * @section 2.1
 * @design char支持\uHHHH转义的BMP范围值，char为32位类型 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCharBMPExtendedEscape(): void {
  let ch1: char = c'\u0041'
  let ch2: char = c'\u007A'
  let ch3: char = c'\uFFFF'
}
