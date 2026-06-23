/**
 * @id EXP_07_22_002_PASS_BIGINT_MULTIPLICATIVE_EXPONENTIATION
 * @expect compile-pass
 * @section 7.22
 * @design 验证 bigint 乘法 * / % 和幂 ** 的类型组合：
 *          bigint*bigint→bigint, bigint/bigint→bigint,
 *          bigint%bigint→bigint, bigint**bigint→bigint
 * @note 正向用例：bigint 运算符要求两个操作数都是 bigint
 */
function main(): void {
  let a: bigint = 10n
  let b: bigint = 3n

  // bigint * bigint → bigint
  let r1 = a * b
  let r1Type = typeof(r1)
  if (r1Type != "bigint") {
    throw new Error("bigint*bigint should be bigint, got " + r1Type)
  }

  // bigint / bigint → bigint
  let r2 = a / b
  let r2Type = typeof(r2)
  if (r2Type != "bigint") {
    throw new Error("bigint/bigint should be bigint, got " + r2Type)
  }

  // bigint % bigint → bigint
  let r3 = a % b
  let r3Type = typeof(r3)
  if (r3Type != "bigint") {
    throw new Error("bigint%bigint should be bigint, got " + r3Type)
  }

  // bigint ** bigint → bigint
  let r4 = a ** b
  let r4Type = typeof(r4)
  if (r4Type != "bigint") {
    throw new Error("bigint**bigint should be bigint, got " + r4Type)
  }

  console.log("verified")
}
main()
