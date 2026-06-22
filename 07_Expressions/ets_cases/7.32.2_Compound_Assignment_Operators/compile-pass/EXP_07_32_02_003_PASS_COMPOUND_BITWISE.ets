/**
 * @id EXP_07_32_02_003_PASS_COMPOUND_BITWISE
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值位运算（&= |= ^=）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCompoundBitwise(): void {
  let x: int = 0xFF; let y: int = 0x0F
  x &= y; x |= 0xF0; x ^= 0x0F
  console.log(x.toString())
}
