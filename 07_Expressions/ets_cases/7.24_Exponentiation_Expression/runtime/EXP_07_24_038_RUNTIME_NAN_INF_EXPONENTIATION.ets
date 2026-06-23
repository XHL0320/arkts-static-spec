/**
 * @id EXP_07_24_038_RUNTIME_NAN_INF_EXPONENTIATION
 * @expect runtime
 * @section 7.24
 * @design 验证 NaN**y 规则（除 NaN**0=1 已在 033 覆盖）和 Inf**y 规则：NaN**any=NaN（除 0 指数）, Inf**y (y>0→Inf, y<0→+0)
 * @note 运行时用例：IEEE 754 NaN 和 Infinity 为基底的幂运算
 */
function main(): void {
  let nan: double = 0.0/0.0
  let inf: double = 1.0/0.0

  // NaN ** 2 = NaN (对于 NaN，使用 NaN!=NaN 检测)
  let r1: double = nan ** 2.0
  if (r1 == r1) {
    throw new Error("assertion failed: NaN**2 should be NaN")
  }

  // NaN ** Inf = NaN
  let r2: double = nan ** inf
  if (r2 == r2) {
    throw new Error("assertion failed: NaN**Inf should be NaN")
  }

  // NaN ** (-1) = NaN
  let r3: double = nan ** (-1.0)
  if (r3 == r3) {
    throw new Error("assertion failed: NaN**(-1) should be NaN")
  }

  // Inf ** 2 = Inf
  let r4: double = inf ** 2.0
  if (r4 != inf) {
    throw new Error("assertion failed: Inf**2=" + r4)
  }

  // Inf ** (-2) = +0
  let r5: double = inf ** (-2.0)
  if (r5 != 0.0) {
    throw new Error("assertion failed: Inf**(-2)=" + r5)
  }

  // Inf ** Inf = Inf
  let r6: double = inf ** inf
  if (r6 != inf) {
    throw new Error("assertion failed: Inf**Inf=" + r6)
  }

  // Inf ** (-Inf) = +0
  let r7: double = inf ** (-inf)
  if (r7 != 0.0) {
    throw new Error("assertion failed: Inf**(-Inf)=" + r7)
  }

  console.log("verified")
}
