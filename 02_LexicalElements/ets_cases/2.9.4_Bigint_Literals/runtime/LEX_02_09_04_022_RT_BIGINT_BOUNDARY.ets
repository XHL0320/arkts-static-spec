/**
 * @id LEX_02_09_04_022_RT_BIGINT_BOUNDARY
 * @expect runtime
 * @section 2.9.4
 * @design bigint 边界值运行时验证
 * @note runtime 用例：验证 bigint 边界值的运行时行为
 */

function main(): void {
  // bigint 超大值
  let x1: bigint = 999999999999999999999999999999n
  if (x1 !== 999999999999999999999999999999n) { throw new Error("bigint large failed, got " + x1) }

  // bigint 超大值运算
  let x2: bigint = 999999999999999999999999999999n + 1n
  if (x2 !== 1000000000000000000000000000000n) { throw new Error("bigint large + 1 failed, got " + x2) }

  // bigint 超大值乘法
  let x3: bigint = 999999999999999999n * 999999999999999999n
  if (x3 !== 999999999999999998000000000000000001n) { throw new Error("bigint large * large failed, got " + x3) }

  // bigint 与 long 比较
  let x4: bigint = 9223372036854775807n
  if (x4 !== 9223372036854775807n) { throw new Error("bigint long max failed, got " + x4) }
}
