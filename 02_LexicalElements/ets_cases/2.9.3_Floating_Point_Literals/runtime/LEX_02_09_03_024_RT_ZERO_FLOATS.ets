/**
 * @id LEX_02_09_03_024_RT_ZERO_FLOATS
 * @expect runtime
 * @section 2.9.3
 * @design 零浮点表示运行时验证
 * @note runtime 用例：验证零的浮点表示的运行时行为
 */

function main(): void {
  // 零的浮点表示
  let x1 = 0.0
  let x2 = .0
  let x3 = 0e0
  let x4 = 0.0f

  // 验证它们都等于 0
  if (x1 !== 0.0) { throw new Error("0.0 failed, got " + x1) }
  if (x2 !== 0.0) { throw new Error(".0 failed, got " + x2) }
  if (x3 !== 0.0) { throw new Error("0e0 failed, got " + x3) }
  if (x4 !== 0.0f) { throw new Error("0.0f failed, got " + x4) }

  // 验证它们相等
  if (x1 !== x2) { throw new Error("0.0 !== .0") }
  if (x2 !== x3) { throw new Error(".0 !== 0e0") }
}
