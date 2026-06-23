/**
 * @id LEX_02_09_09_006_RT_NULL_VALUE
 * @expect runtime
 * @section 2.9.9
 * @design null 值验证
 * @note runtime 用例：验证 null 值的运行时行为
 */

function main(): void {
  // null 值
  let x1: null = null
  if (x1 !== null) { throw new Error("null failed, got " + x1) }

  // T | null 类型
  let x2: int | null = null
  if (x2 !== null) { throw new Error("int | null failed") }

  let x3: string | null = null
  if (x3 !== null) { throw new Error("string | null failed") }
}
