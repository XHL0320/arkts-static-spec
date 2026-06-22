/**
 * @id CON_06_03_006_PASS_BITWISE_WIDENING
 * @expect compile-pass
 * @section 6.3
 * @design 位运算: int & long / int | long / int ^ long, widening 后运算
 * @note 正向用例：验证位运算的 widening 编译通过
 */
function testBitwiseWidening(): void {
  let a: int = 0xFF
  let b: long = 0x0F
  let r1: long = a & b
  let r2: long = a | b
  let r3: long = a ^ b
}
