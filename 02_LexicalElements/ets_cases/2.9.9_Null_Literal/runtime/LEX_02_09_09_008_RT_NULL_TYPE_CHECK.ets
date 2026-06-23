/**
 * @id LEX_02_09_09_008_RT_NULL_TYPE_CHECK
 * @expect runtime
 * @section 2.9.9
 * @design null 类型检查
 * @note runtime 用例：验证 null 类型检查的运行时行为
 */

function main(): void {
  // null 类型检查
  let x1: null = null
  
  if (typeof x1 !== "object") {
    throw new Error("typeof null failed, got " + typeof x1)
  }

  // T | null 类型检查
  let x2: int | null = null
  if (x2 !== null) { throw new Error("int | null failed") }

  let x3: string | null = null
  if (x3 !== null) { throw new Error("string | null failed") }
}
