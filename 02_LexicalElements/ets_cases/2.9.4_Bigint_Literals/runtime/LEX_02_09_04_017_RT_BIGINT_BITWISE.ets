/**
 * @id LEX_02_09_04_017_RT_BIGINT_BITWISE
 * @expect runtime
 * @section 2.9.4
 * @design bigint 位运算验证
 * @note runtime 用例：验证 bigint 位运算
 */

function main(): void {
  // 验证 bigint 位运算（使用十进制）
  let x: bigint = 255n  // 0xFF
  let y: bigint = 15n   // 0x0F
  
  // AND 运算
  let andResult: bigint = x & y
  if (andResult !== 15n) { throw new Error("bigint AND failed, got " + andResult) }
  
  // OR 运算
  let orResult: bigint = x | 256n  // 0x100
  if (orResult !== 511n) { throw new Error("bigint OR failed, got " + orResult) }
  
  // XOR 运算
  let xorResult: bigint = x ^ 255n
  if (xorResult !== 0n) { throw new Error("bigint XOR failed, got " + xorResult) }
}
