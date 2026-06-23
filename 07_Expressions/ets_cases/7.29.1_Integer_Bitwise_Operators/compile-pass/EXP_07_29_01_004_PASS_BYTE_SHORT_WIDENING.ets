/**
 * @id EXP_07_29_01_004_PASS_BYTE_SHORT_WIDENING
 * @expect compile-pass
 * @section 7.29.1
 * @design byte/short 位运算时 widening 转换
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testByteShortWidening(): void {
  let a: byte = 0x0F; let b: short = 0xFF
  let result: int = a | b
  console.log(result.toString())
}
