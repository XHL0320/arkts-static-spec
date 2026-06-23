/**
 * @id EXP_07_01_01_026_RUNTIME_ARITH_MIXED
 * @expect runtime
 * @section 7.1.1
 * @design 算术混合优先级：`1 + 2 * 3 - 4 / 2` = 1 + 6 - 2 = 5
 * @note 运行时用例：验证乘除优先于加减
 */
function main(): void {
  let r1: int = 1 + 2 * 3 - 4 / 2
  if (r1 != 5) {
    throw new Error("assertion failed: 1+2*3-4/2 != 5, got " + r1)
  }
  let r2: int = 10 - 6 / 3 + 2 * 4
  if (r2 != 16) {
    throw new Error("assertion failed: 10-6/3+2*4 != 16, got " + r2)
  }
  let r3: int = 2 * 3 + 4 % 3
  if (r3 != 7) {
    throw new Error("assertion failed: 2*3+4%3 != 7, got " + r3)
  }
  console.log("verified")
}
