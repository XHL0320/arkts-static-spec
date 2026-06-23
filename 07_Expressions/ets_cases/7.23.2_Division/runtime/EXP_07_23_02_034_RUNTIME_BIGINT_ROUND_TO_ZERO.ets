/**
 * @id EXP_07_23_02_034_RUNTIME_BIGINT_ROUND_TO_ZERO
 * @expect runtime
 * @section 7.23.2
 * @design 验证 bigint 除法向零取整行为。
 *         spec：the quotient of bigint operands n and d is the bigint value q
 *         with the largest possible magnitude that satisfies |d·q| ≤ |n|.
 *         不会截断为小数，而是向零取整。
 * @note 运行时用例：验证 bigint 除法向零取整
 */
function main(): void {
  // 同号：正 / 正 = 正
  let r1: bigint = 7n / 3n
  if (r1 != 2n) {
    throw new Error("7n/3n should be 2n (round toward zero), got " + r1)
  }

  // 异号：负 / 正 = 负
  let r2: bigint = (-7n) / 3n
  if (r2 != -2n) {
    throw new Error("(-7n)/3n should be -2n, got " + r2)
  }

  // 异号：正 / 负 = 负
  let r3: bigint = 7n / (-3n)
  if (r3 != -2n) {
    throw new Error("7n/(-3n) should be -2n, got " + r3)
  }

  // 同号：负 / 负 = 正
  let r4: bigint = (-7n) / (-3n)
  if (r4 != 2n) {
    throw new Error("(-7n)/(-3n) should be 2n, got " + r4)
  }

  // 整除无余数
  let r5: bigint = 100n / 5n
  if (r5 != 20n) {
    throw new Error("100n/5n should be 20n, got " + r5)
  }

  console.log("verified")
}
main()
