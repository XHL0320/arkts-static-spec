/**
 * @id LEX_02_09_04_010_RT_BIGINT_CONVERSION
 * @expect runtime
 * @section 2.9.4
 * @design BigInt 转换函数验证
 * @note runtime 用例：验证 BigInt() 转换函数
 */

function main(): void {
  // 验证 BigInt() 转换函数
  let x1: bigint = BigInt("153")
  let x2: bigint = BigInt(153)

  if (x1 !== 153n) { throw new Error("BigInt(string) failed") }
  if (x2 !== 153n) { throw new Error("BigInt(long) failed") }

  // 验证 BigInt() 转换大数值
  let x3: bigint = BigInt("9876543210")
  if (x3 !== 9876543210n) { throw new Error("BigInt(large string) failed") }
}
