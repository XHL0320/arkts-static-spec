/**
 * @id LEX_02_09_03_014_RT_FLOAT_SUFFIX
 * @expect runtime
 * @section 2.9.3
 * @design float 后缀值验证
 * @note runtime 用例：验证 float 后缀正确性
 */

function main(): void {
  // 验证 float 后缀值
  let x1: float = 3.14f
  let x2: float = 1e10f

  if (x1 !== 3.14f) { throw new Error("3.14f mismatch") }
  if (x2 !== 10000000000.0f) { throw new Error("1e10f mismatch") }
}
