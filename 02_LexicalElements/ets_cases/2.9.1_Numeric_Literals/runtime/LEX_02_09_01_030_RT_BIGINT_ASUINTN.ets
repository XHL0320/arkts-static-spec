/**
 * @id LEX_02_09_01_030_RT_BIGINT_ASUINTN
 * @expect runtime
 * @section 2.9.1
 * @design BigInt.asUintN() 函数验证
 * @note runtime 用例：验证 BigInt.asUintN() 函数
 */

function main(): void {
  // 验证 asUintN(8, 256) = 0
  let x1: bigint = BigInt.asUintN(8, 256n)
  if (x1 !== 0n) { throw new Error("asUintN(8, 256) failed, got " + x1) }

  // 验证 asUintN(8, 255) = 255
  let x2: bigint = BigInt.asUintN(8, 255n)
  if (x2 !== 255n) { throw new Error("asUintN(8, 255) failed, got " + x2) }

  // 验证 asUintN(16, 65535) = 65535
  let x3: bigint = BigInt.asUintN(16, 65535n)
  if (x3 !== 65535n) { throw new Error("asUintN(16, 65535) failed, got " + x3) }
}
