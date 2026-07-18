/**
 * @id EXP_07_24_037_RUNTIME_ONE_ANY_EXPONENT
 * @expect runtime
 * @section 7.24
 * @design Exponentiation_Expression中int关系运算运行时断言
 * @note 对抗用例: Exponentiation_Expression中int关系运算运行时行为正确
 */
function main(): void {
  let nan: double = 0.0/0.0
  let inf: double = 1.0/0.0
  let negInf: double = -1.0/0.0

  // +1 ** NaN = 1
  let r1: double = 1.0 ** nan
  if (r1 != 1.0) {
    throw new Error("assertion failed: 1.0**NaN=" + r1)
  }

  // +1 ** Inf = 1
  let r2: double = 1.0 ** inf
  if (r2 != 1.0) {
    throw new Error("assertion failed: 1.0**Inf=" + r2)
  }

  // +1 ** (-Inf) = 1
  let r3: double = 1.0 ** negInf
  if (r3 != 1.0) {
    throw new Error("assertion failed: 1.0**(-Inf)=" + r3)
  }

  // +1 ** 0 = 1
  let r4: double = 1.0 ** 0.0
  if (r4 != 1.0) {
    throw new Error("assertion failed: 1.0**0=" + r4)
  }

  // +1 ** 5 = 1
  let r5: double = 1.0 ** 5.0
  if (r5 != 1.0) {
    throw new Error("assertion failed: 1.0**5=" + r5)
  }

  // (-1) ** (+Inf) = 1
  let r6: double = (-1.0) ** inf
  if (r6 != 1.0) {
    throw new Error("assertion failed: (-1.0)**Inf=" + r6)
  }

  // (-1) ** (-Inf) = 1
  let r7: double = (-1.0) ** negInf
  if (r7 != 1.0) {
    throw new Error("assertion failed: (-1.0)**(-Inf)=" + r7)
  }

  console.log("verified")
}
