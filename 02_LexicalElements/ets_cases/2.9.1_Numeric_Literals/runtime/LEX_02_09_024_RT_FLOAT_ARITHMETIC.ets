/**
 * @id LEX_02_09_024_RT_FLOAT_ARITHMETIC
 * @expect runtime
 * @section 2.9.1
 * @design 浮点运算验证
 * @note runtime 用例：验证浮点运算正确性
 */

function main(): void {
  let pi: double = 3.14159
  let radius: double = 5.0
  let area: double = pi * radius * radius

  // 验证面积计算 (π * r² ≈ 78.53975)
  if (area < 78.5 || area > 78.6) { throw new Error("float arithmetic failed") }
}
