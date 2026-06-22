/**
 * @id EXP_07_29_01_003_PASS_BIGINT_BITWISE
 * @expect compile-pass
 * @section 7.29.1
 * @design bigint 类型位运算
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBigintBitwise(): void {
  let a: bigint = 0xFFn; let b: bigint = 0x0Fn
  let andVal: bigint = a & b; let orVal: bigint = a | b; let xorVal: bigint = a ^ b
  console.log(andVal.toString(), orVal.toString(), xorVal.toString())
}
