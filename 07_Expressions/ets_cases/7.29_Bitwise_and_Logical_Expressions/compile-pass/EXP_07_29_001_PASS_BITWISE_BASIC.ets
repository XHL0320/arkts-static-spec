/**
 * @id EXP_07_29_001_PASS_BITWISE_BASIC
 * @expect compile-pass
 * @section 7.29
 * @design 基本位运算（& | ^）int 类型
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBitwiseBasic(): void {
  let a: int = 0b1100; let b: int = 0b1010
  let andVal: int = a & b; let orVal: int = a | b; let xorVal: int = a ^ b
  console.log(andVal.toString(), orVal.toString(), xorVal.toString())
}
