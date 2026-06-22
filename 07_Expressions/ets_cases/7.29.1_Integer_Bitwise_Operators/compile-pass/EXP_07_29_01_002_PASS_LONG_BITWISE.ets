/**
 * @id EXP_07_29_01_002_PASS_LONG_BITWISE
 * @expect compile-pass
 * @section 7.29.1
 * @design long 类型位运算
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLongBitwise(): void {
  let a: long = 0xFFFFFFFF; let b: long = 0x0000FFFF
  let andVal: long = a & b; let orVal: long = a | b
  console.log(andVal.toString(), orVal.toString())
}
