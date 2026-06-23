/**
 * @id EXP_07_24_039_RUNTIME_NEG_INF_EXPONENTIATION
 * @expect runtime
 * @section 7.24
 * @design 验证 -Infinity ** y 规则：有限负奇整数 y→-0, 有限正奇整数 y→-Infinity, 其他→+0/+Infinity
 * @note 运行时用例：IEEE 754 -Infinity 为基底的幂运算
 */
function main(): void {
  let inf: double = 1.0/0.0
  let negInf: double = -1.0/0.0

  // (-Inf) ** (-3) = -0（负奇整数）
  let r1: double = negInf ** (-3.0)
  if (1.0/r1 != -inf) {
    throw new Error("assertion failed: (-Inf)**(-3) should be -0")
  }

  // (-Inf) ** (-2) = +0（负偶整数）
  let r2: double = negInf ** (-2.0)
  if (r2 != 0.0) {
    throw new Error("assertion failed: (-Inf)**(-2)=" + r2)
  }
  if (1.0/r2 != inf) {
    throw new Error("assertion failed: (-Inf)**(-2) should be +0")
  }

  // (-Inf) ** 3 = -Inf（正奇整数）
  let r3: double = negInf ** 3.0
  if (r3 != negInf) {
    throw new Error("assertion failed: (-Inf)**3=" + r3)
  }

  // (-Inf) ** 2 = +Inf（正偶整数）
  let r4: double = negInf ** 2.0
  if (r4 != inf) {
    throw new Error("assertion failed: (-Inf)**2=" + r4)
  }

  // (-Inf) ** 3.5 = +Inf（非整数正）
  let r5: double = negInf ** 3.5
  if (r5 != inf) {
    throw new Error("assertion failed: (-Inf)**3.5=" + r5)
  }

  console.log("verified")
}
