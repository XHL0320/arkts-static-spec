/**
 * @id LEX_02_09_03_026_RT_SPECIAL_VALUE_OPS
 * @expect runtime
 * @section 2.9.3
 * @design 特殊值运算运行时验证
 * @note runtime 用例：验证 NaN/Infinity 的运算行为
 */

function main(): void {
  // NaN 运算
  let nan = 0.0 / 0.0
  let x1 = nan + 1
  // NaN + 任何值都是 NaN
  if (x1 === x1) { throw new Error("NaN + 1 should be NaN") }

  // Infinity 运算
  let inf = 1.0 / 0.0
  let x2 = inf + 1
  // Infinity + 有限数 = Infinity
  if (x2 < 1000000000000.0) { throw new Error("Infinity + 1 should be Infinity") }

  let x3 = inf * 2
  if (x3 < 1000000000000.0) { throw new Error("Infinity * 2 should be Infinity") }

  // NaN 比较
  if (nan === nan) { throw new Error("NaN should not equal itself") }

  // Infinity 比较
  if (inf !== inf) { throw new Error("Infinity should equal itself") }

  // 负 Infinity
  let negInf = -1.0 / 0.0
  if (negInf > -1000000000000.0) { throw new Error("-Infinity should be less than any finite number") }
}
