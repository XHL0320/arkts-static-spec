/**
 * @id EXP_07_29_01_008_RUNTIME_BITWISE_TRUTH_TABLE
 * @expect runtime
 * @section 7.29.1
 * @design 位运算真值表验证

 * @note 运行时用例：实际执行验证位运算真值表
 */
function main(): void {
  let a: int = 0b1100; let b: int = 0b1010
  if ((a & b) != 0b1000) { throw new Error("assertion failed: 1100 & 1010 = 1000") }
  if ((a | b) != 0b1110) { throw new Error("assertion failed: 1100 | 1010 = 1110") }
  if ((a ^ b) != 0b0110) { throw new Error("assertion failed: 1100 ^ 1010 = 0110") }
  console.log("verified")
}
