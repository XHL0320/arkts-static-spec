/**
 * @id LEX_02_09_03_023_RT_NEGATIVE_FLOATS
 * @expect runtime
 * @section 2.9.3
 * @design 负浮点数运行时验证
 * @note runtime 用例：验证负浮点数的运行时行为
 */

function main(): void {
  // 负浮点数
  let x1 = -3.14
  if (x1 !== -3.14) { throw new Error("-3.14 failed, got " + x1) }

  let x2 = -0.5
  if (x2 !== -0.5) { throw new Error("-0.5 failed, got " + x2) }

  let x3 = -.5
  if (x3 !== -0.5) { throw new Error("-.5 failed, got " + x3) }

  let x4 = -1e10
  if (x4 !== -10000000000) { throw new Error("-1e10 failed, got " + x4) }

  let x5 = -1.5e-5
  if (x5 !== -0.000015) { throw new Error("-1.5e-5 failed, got " + x5) }

  // 负浮点运算
  let x6 = -3.14 + 1.14
  if (x6 !== -2.0) { throw new Error("-3.14 + 1.14 failed, got " + x6) }
}
