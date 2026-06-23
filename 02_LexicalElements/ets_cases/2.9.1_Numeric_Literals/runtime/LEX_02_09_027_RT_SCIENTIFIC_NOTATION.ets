/**
 * @id LEX_02_09_027_RT_SCIENTIFIC_NOTATION
 * @expect runtime
 * @section 2.9.1
 * @design 科学计数法值验证
 * @note runtime 用例：验证科学计数法正确性
 */

function main(): void {
  let scientific: double = 1.5e10
  let manual: double = 15000000000.0

  // 验证科学计数法值
  if (scientific !== manual) { throw new Error("scientific notation mismatch") }
}
