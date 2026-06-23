/**
 * @id LEX_02_09_025_RT_BIGINT_ARITHMETIC
 * @expect runtime
 * @section 2.9.1
 * @design bigint 运算验证
 * @note runtime 用例：验证 bigint 运算正确性
 */

function main(): void {
  let big1: bigint = 9876543210n
  let big2: bigint = 1234567890n
  let sum: bigint = big1 + big2

  // 验证大整数加法
  if (sum !== 11111111100n) { throw new Error("bigint arithmetic failed") }
}
