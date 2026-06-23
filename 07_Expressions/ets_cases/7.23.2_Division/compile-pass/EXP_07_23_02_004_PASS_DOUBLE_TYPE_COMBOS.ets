/**
 * @id EXP_07_23_02_004_PASS_DOUBLE_TYPE_COMBOS
 * @expect compile-pass
 * @section 7.23.2
 * @design 验证 double 除法类型组合：
 *         double/int→number，double/float→number，double/double→number
 *         typeof(double) 返回 "number"（ECMAScript 兼容）
 * @note 正向用例：验证 double 除法结果类型为 "number"
 */
function main(): void {
  let a: double = 10.5
  let b: int = 3
  let c: float = Double.toFloat(2.0)
  let d: double = 5.0

  // double / int → number
  let r1 = a / b
  let r1Type = typeof(r1)
  if (r1Type != "number") {
    throw new Error("double/int should be number, got " + r1Type)
  }

  // double / float → number
  let r2 = a / c
  let r2Type = typeof(r2)
  if (r2Type != "number") {
    throw new Error("double/float should be number, got " + r2Type)
  }

  // double / double → number
  let r3 = a / d
  let r3Type = typeof(r3)
  if (r3Type != "number") {
    throw new Error("double/double should be number, got " + r3Type)
  }

  // int / double → number
  let r4 = b / a
  let r4Type = typeof(r4)
  if (r4Type != "number") {
    throw new Error("int/double should be number, got " + r4Type)
  }

  console.log("verified")
}
main()
