/**
 * @id LEX_02_09_04_008_RT_BIGINT_ARITHMETIC
 * @expect runtime
 * @section 2.9.4
 * @design bigint 运算验证
 * @note runtime 用例：验证 bigint 运算正确性
 */

function main(): void {
  // 验证 bigint 运算
  let a: bigint = 9876543210n
  let b: bigint = 1234567890n
  let sum: bigint = a + b

  if (sum !== 11111111100n) { throw new Error("bigint addition failed") }

  // 验证大数值运算
  let big1: bigint = 999999999999999999999n
  let big2: bigint = 1n
  let bigSum: bigint = big1 + big2

  if (bigSum !== 1000000000000000000000n) { throw new Error("large bigint addition failed") }
}
