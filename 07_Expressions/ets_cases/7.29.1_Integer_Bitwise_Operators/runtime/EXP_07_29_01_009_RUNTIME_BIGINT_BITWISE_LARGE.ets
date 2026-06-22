/**
 * @id EXP_07_29_01_009_RUNTIME_BIGINT_BITWISE_LARGE
 * @expect runtime
 * @section 7.29.1
 * @design bigint 大值位运算

 * @note 运行时用例：实际执行验证bigint 大值位运算
 */
function main(): void {
  let a: bigint = (1n << 64n) - 1n; let b: bigint = 0xFFFFFFFFFFFFn
  let result: bigint = a & b
  if (result != b) { throw new Error("assertion failed: bigint bitwise AND") }
  console.log("verified")
}
