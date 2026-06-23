/**
 * @id LEX_02_09_03_013_RT_SCIENTIFIC_NOTATION
 * @expect runtime
 * @section 2.9.3
 * @design 科学计数法值验证
 * @note runtime 用例：验证科学计数法正确性
 */

function main(): void {
  // 验证科学计数法值
  let x1: double = 1e10
  let x2: double = 1.5e-5

  if (x1 !== 10000000000.0) { throw new Error("1e10 mismatch") }
  if (x2 !== 0.000015) { throw new Error("1.5e-5 mismatch") }
}
