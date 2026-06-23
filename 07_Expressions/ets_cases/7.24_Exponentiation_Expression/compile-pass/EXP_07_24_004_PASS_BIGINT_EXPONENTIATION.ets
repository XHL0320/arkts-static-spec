/**
 * @id EXP_07_24_004_PASS_BIGINT_EXPONENTIATION
 * @expect compile-pass
 * @section 7.24
 * @design 验证 bigint 类型幂运算：bigint**bigint 编译通过，指数必须为非负
 * @note 正向用例：验证 bigint 指数运算的正确用法
 */
function main(): void {
  let a: bigint = 2n
  let b: bigint = 3n
  let c: bigint = a ** b   // 2n**3n=8n
  let d: bigint = 10n ** 0n // 10n**0n=1n
  let e: bigint = 0n ** 0n  // 0n**0n=1n
  console.log("verified")
}
