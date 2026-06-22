/**
 * @id EXP_07_29_01_001_PASS_INT_BITWISE
 * @expect compile-pass
 * @section 7.29.1
 * @design int 位运算完整覆盖（& | ^）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testIntBitwise(): void {
  let a: int = 0xFF; let b: int = 0x0F
  let andVal: int = a & b; let orVal: int = a | b; let xorVal: int = a ^ b
  console.log(andVal.toString(), orVal.toString(), xorVal.toString())
}
