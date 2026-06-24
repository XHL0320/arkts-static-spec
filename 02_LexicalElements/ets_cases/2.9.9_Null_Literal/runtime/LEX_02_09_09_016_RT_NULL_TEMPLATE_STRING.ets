/**
 * @id LEX_02_09_09_016_RT_NULL_TEMPLATE_STRING
 * @expect runtime
 * @section 2.9.9
 * @design null 在模板字符串中
 * @note runtime 用例：验证 null 在模板字符串中的运行时行为
 */

function main(): void {
  // null 在模板字符串中
  let x1: int | null = null
  let s1 = `value: ${x1}`
  if (s1 !== "value: null") {
    throw new Error("template string failed, got " + s1)
  }

  let x2: string | null = null
  let s2 = `value: ${x2}`
  if (s2 !== "value: null") {
    throw new Error("template string failed, got " + s2)
  }
}
