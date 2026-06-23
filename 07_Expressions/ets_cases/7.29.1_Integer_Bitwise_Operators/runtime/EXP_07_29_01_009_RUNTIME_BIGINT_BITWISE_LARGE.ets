/**
 * @id EXP_07_29_01_009_RUNTIME_BIGINT_BITWISE_LARGE
 * @expect runtime
 * @section 7.29.1
 * @design bigint 大值位运算
 * @note 运行时用例：实际执行验证 bigint 大值位运算
 */
function main(): void {
  let a: bigint = BigInt("18446744073709551615")
  let b: bigint = BigInt("281474976710655")
  let result: bigint = a & b
  if (result != b) { throw new Error("assertion failed: bigint bitwise AND") }
  console.log("verified")
}
