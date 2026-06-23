/**
 * @id LEX_02_09_01_047_RT_BIGINT_BOUNDARY
 * @expect runtime
 * @section 2.9.1
 * @design bigint 边界值运行时验证
 * @note runtime 用例：验证 bigint 边界值的运行时行为
 */

function main(): void {
  // bigint 超大值
  let x1: bigint = 999999999999999999999999999999n
  if (x1 !== 999999999999999999999999999999n) { throw new Error("bigint large failed, got " + x1) }

  // bigint 运算
  let x2: bigint = 999999999999999999999999999999n + 1n
  if (x2 !== 1000000000000000000000000000000n) { throw new Error("bigint large + 1 failed, got " + x2) }

  // bigint 与 long 比较
  let x3: bigint = 9223372036854775807n
  if (x3 !== 9223372036854775807n) { throw new Error("bigint long max failed, got " + x3) }

  // bigint 转换
  let x4: bigint = BigInt("999999999999999999")
  if (x4 !== 999999999999999999n) { throw new Error("BigInt string failed, got " + x4) }
}
