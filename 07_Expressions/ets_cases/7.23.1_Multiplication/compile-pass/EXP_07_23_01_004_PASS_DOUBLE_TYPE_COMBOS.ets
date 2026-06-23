/**
 * @id EXP_07_23_01_004_PASS_DOUBLE_TYPE_COMBOS
 * @expect compile-pass
 * @section 7.23.1
 * @design 验证 double 乘法类型组合：
 *         double*int→number（typeof 为 number 而非 double），
 *         double*float→number，double*double→number
 * @note 正向用例：验证 double 乘法结果 typeof 为 "number"（ECMAScript 兼容）
 */
function main(): void {
  let a: double = 3.5
  let b: int = 10
  let c: float = Double.toFloat(2.5)
  let d: double = 4.0

  // double * int → number
  let r1 = a * b
  let r1Type = typeof(r1)
  if (r1Type != "number") {
    throw new Error("double*int should be number, got " + r1Type)
  }

  // int * double → number
  let r2 = b * a
  let r2Type = typeof(r2)
  if (r2Type != "number") {
    throw new Error("int*double should be number, got " + r2Type)
  }

  // double * float → number
  let r3 = a * c
  let r3Type = typeof(r3)
  if (r3Type != "number") {
    throw new Error("double*float should be number, got " + r3Type)
  }

  // float * double → number
  let r4 = c * a
  let r4Type = typeof(r4)
  if (r4Type != "number") {
    throw new Error("float*double should be number, got " + r4Type)
  }

  // double * double → number
  let r5 = a * d
  let r5Type = typeof(r5)
  if (r5Type != "number") {
    throw new Error("double*double should be number, got " + r5Type)
  }

  console.log("verified")
}
main()
