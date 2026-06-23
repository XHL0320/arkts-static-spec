/**
 * @id EXP_07_23_02_031_RUNTIME_INT_DIVISION_ROUND_TO_ZERO
 * @expect runtime
 * @section 7.23.2
 * @design 验证整数除法向零取整行为及符号规则。
 *         spec：商 q 是满足 |d·q| ≤ |n| 的最大绝对值整数。
 *         q 的符号：同号为正，异号为负。
 * @note 运行时用例：验证整数除法向零取整及符号规则
 */
function main(): void {
  // 同号：正 / 正 = 正
  let r1: int = 7 / 3
  if (r1 != 2) {
    throw new Error("7/3 should be 2 (round toward zero), got " + r1)
  }

  // 异号：负 / 正 = 负
  let r2: int = (-7) / 3
  if (r2 != -2) {
    throw new Error("(-7)/3 should be -2, got " + r2)
  }

  // 异号：正 / 负 = 负
  let r3: int = 7 / (-3)
  if (r3 != -2) {
    throw new Error("7/(-3) should be -2, got " + r3)
  }

  // 同号：负 / 负 = 正
  let r4: int = (-7) / (-3)
  if (r4 != 2) {
    throw new Error("(-7)/(-3) should be 2, got " + r4)
  }

  // 整除无余数
  let r5: int = 10 / 5
  if (r5 != 2) {
    throw new Error("10/5 should be 2, got " + r5)
  }

  console.log("verified")
}
main()
