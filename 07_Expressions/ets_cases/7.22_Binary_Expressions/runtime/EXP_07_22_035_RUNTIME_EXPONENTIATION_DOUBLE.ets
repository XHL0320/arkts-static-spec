/**
 * @id EXP_07_22_035_RUNTIME_EXPONENTIATION_DOUBLE
 * @expect runtime
 * @section 7.22
 * @design 验证幂运算符 ** 在任何数值类型组合下返回 double，
 *         以及 bigint**bigint→bigint 的特殊规则。
 * @note 运行时用例：幂运算结果类型和数值验证
 */
function main(): void {
  // int ** int → double (typeof => "number")
  let a: int = 2
  let b: int = 10
  let r1 = a ** b
  let r1Type = typeof(r1)
  if (r1Type != "number") {
    throw new Error("int**int should be number, got " + r1Type)
  }
  // 2**10 = 1024
  if (r1 != 1024.0) {
    throw new Error("2**10 should be 1024, got " + r1)
  }

  // 3**3 = 27
  let r2 = 3 ** 3
  if (r2 != 27.0) {
    throw new Error("3**3 should be 27, got " + r2)
  }

  // 5**0 = 1
  let r3 = 5 ** 0
  if (r3 != 1.0) {
    throw new Error("5**0 should be 1, got " + r3)
  }

  // bigint ** bigint → bigint
  let c: bigint = 3n
  let d: bigint = 4n
  let r4 = c ** d
  let r4Type = typeof(r4)
  if (r4Type != "bigint") {
    throw new Error("bigint**bigint should be bigint, got " + r4Type)
  }
  // 3n**4n = 81n
  if (r4 != 81n) {
    throw new Error("3n**4n should be 81n, got " + r4)
  }

  // bigint ** 0n = 1n
  let r5 = 10n ** 0n
  if (r5 != 1n) {
    throw new Error("10n**0n should be 1n, got " + r5)
  }

  console.log("verified")
}
main()
