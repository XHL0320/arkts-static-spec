/**
 * @id EXP_07_24_040_RUNTIME_X_INFINITY_EXPONENT
 * @expect runtime
 * @section 7.24
 * @design 验证 x ** +/-Infinity 基于范围规则：-1<x<1 ** +Inf→+0, x<-1或x>1 ** +Inf→+Inf; -1<x<1 ** -Inf→+Inf, x<-1或x>1 ** -Inf→+0
 * @note 运行时用例：IEEE 754 有限基数与无穷大指数
 */
function main(): void {
  let inf: double = 1.0/0.0
  let negInf: double = -1.0/0.0

  // 0.5 ** +Inf = +0（-1<0.5<1）
  let r1: double = 0.5 ** inf
  if (r1 != 0.0) {
    throw new Error("assertion failed: 0.5**Inf=" + r1)
  }

  // (-0.5) ** +Inf = +0（-1<-0.5<1）
  let r2: double = (-0.5) ** inf
  if (r2 != 0.0) {
    throw new Error("assertion failed: (-0.5)**Inf=" + r2)
  }

  // 2 ** +Inf = +Inf（x>1）
  let r3: double = 2.0 ** inf
  if (r3 != inf) {
    throw new Error("assertion failed: 2.0**Inf=" + r3)
  }

  // (-2) ** +Inf = +Inf（x<-1）
  let r4: double = (-2.0) ** inf
  if (r4 != inf) {
    throw new Error("assertion failed: (-2.0)**Inf=" + r4)
  }

  // 0.5 ** -Inf = +Inf（-1<0.5<1）
  let r5: double = 0.5 ** negInf
  if (r5 != inf) {
    throw new Error("assertion failed: 0.5**(-Inf)=" + r5)
  }

  // 2 ** -Inf = +0（x>1）
  let r6: double = 2.0 ** negInf
  if (r6 != 0.0) {
    throw new Error("assertion failed: 2.0**(-Inf)=" + r6)
  }

  // (-2) ** -Inf = +0（x<-1）
  let r7: double = (-2.0) ** negInf
  if (r7 != 0.0) {
    throw new Error("assertion failed: (-2.0)**(-Inf)=" + r7)
  }

  console.log("verified")
}
