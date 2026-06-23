/**
 * @id EXP_07_22_006_PASS_BIGINT_ADDITIVE
 * @expect compile-pass
 * @section 7.22
 * @design 验证 bigint 加法/减法 +/- 的类型组合：
 *          bigint+bigint→bigint, bigint-bigint→bigint
 * @note 正向用例：bigint + 和 - 要求两个操作数都是 bigint
 */
function main(): void {
  let a: bigint = 10n
  let b: bigint = 3n

  // bigint + bigint → bigint
  let r1 = a + b
  let r1Type = typeof(r1)
  if (r1Type != "bigint") {
    throw new Error("bigint+bigint should be bigint, got " + r1Type)
  }

  // bigint - bigint → bigint
  let r2 = a - b
  let r2Type = typeof(r2)
  if (r2Type != "bigint") {
    throw new Error("bigint-bigint should be bigint, got " + r2Type)
  }

  console.log("verified")
}
main()
