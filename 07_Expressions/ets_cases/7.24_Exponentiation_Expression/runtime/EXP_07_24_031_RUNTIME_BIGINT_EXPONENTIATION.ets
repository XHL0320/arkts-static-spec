/**
 * @id EXP_07_24_031_RUNTIME_BIGINT_EXPONENTIATION
 * @expect runtime
 * @section 7.24
 * @design 验证 bigint 指数运算的运行时正确性：2n**3n=8n, (-3n)**2n=9n, (-3n)**3n=-27n
 * @note 运行时用例：验证 bigint 幂运算结果
 */
function main(): void {
  let a: bigint = 2n
  let b: bigint = 3n
  let r1: bigint = a ** b
  if (r1 != 8n) {
    throw new Error("assertion failed: 2n**3n=" + r1)
  }

  let r2: bigint = (-3n) ** 2n
  if (r2 != 9n) {
    throw new Error("assertion failed: (-3n)**2n=" + r2)
  }

  let r3: bigint = (-3n) ** 3n
  if (r3 != -27n) {
    throw new Error("assertion failed: (-3n)**3n=" + r3)
  }

  let r4: bigint = 10n ** 0n
  if (r4 != 1n) {
    throw new Error("assertion failed: 10n**0n=" + r4)
  }

  let r5: bigint = 0n ** 0n
  if (r5 != 1n) {
    throw new Error("assertion failed: 0n**0n=" + r5)
  }

  console.log("verified")
}
