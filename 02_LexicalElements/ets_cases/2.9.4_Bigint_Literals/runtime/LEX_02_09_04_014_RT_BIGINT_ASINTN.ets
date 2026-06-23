/**
 * @id LEX_02_09_04_014_RT_BIGINT_ASINTN
 * @expect runtime
 * @section 2.9.4
 * @design asIntN 函数验证
 * @note runtime 用例：验证 BigInt.asIntN() 函数
 */

function main(): void {
  // 验证 asIntN 函数 - 取低 8 位
  let x: bigint = 256n
  let result: bigint = BigInt.asIntN(8, x)
  if (result !== 0n) { throw new Error("asIntN(8, 256) failed, got " + result) }

  // 验证 asIntN 函数 - 负数取低 8 位（保持符号）
  let y: bigint = -1n
  let result2: bigint = BigInt.asIntN(8, y)
  if (result2 !== -1n) { throw new Error("asIntN(8, -1) failed, got " + result2) }

  // 验证 asIntN 函数 - 16 位
  let z: bigint = 65537n
  let result3: bigint = BigInt.asIntN(16, z)
  if (result3 !== 1n) { throw new Error("asIntN(16, 65537) failed, got " + result3) }
}
