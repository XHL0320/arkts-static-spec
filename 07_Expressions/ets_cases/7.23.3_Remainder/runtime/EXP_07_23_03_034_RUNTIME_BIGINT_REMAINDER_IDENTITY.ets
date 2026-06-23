/**
 * @id EXP_07_23_03_034_RUNTIME_BIGINT_REMAINDER_IDENTITY
 * @expect runtime
 * @section 7.23.3
 * @design 验证 bigint 取余恒等式 (a/b)*b + (a%b) == a 成立。
 *         结果符号与被除数相同。
 * @note 运行时用例：验证 bigint 取余恒等式和符号规则
 */
function main(): void {
  // 正数 % 正数
  let r1: bigint = 10n % 3n
  if (r1 != 1n) {
    throw new Error("10n%3n should be 1n, got " + r1)
  }
  let id1: bigint = (10n / 3n) * 3n + r1
  if (id1 != 10n) {
    throw new Error("Identity failed for 10n%3n")
  }

  // 负数 % 正数 = 负（与被除数同号）
  let r2: bigint = (-10n) % 3n
  if (r2 != -1n) {
    throw new Error("(-10n)%3n should be -1n, got " + r2)
  }
  let id2: bigint = ((-10n) / 3n) * 3n + r2
  if (id2 != -10n) {
    throw new Error("Identity failed for (-10n)%3n")
  }

  // 大数 bigint 取余
  let big: bigint = 999999999999999999999999999999n
  let d: bigint = 123456789n
  let r3: bigint = big % d
  let id3: bigint = (big / d) * d + r3
  if (id3 != big) {
    throw new Error("Identity failed for big bigint remainder")
  }

  console.log("verified")
}
main()
