/**
 * @id LEX_02_09_08_016_RT_UNDEFINED_TEMPLATE_STRING
 * @expect runtime
 * @section 2.9.8
 * @design undefined 在模板字符串中
 * @note runtime 用例：验证 undefined 在模板字符串中的运行时行为
 */

function main(): void {
  // undefined 在模板字符串中
  let x1: int | undefined = undefined
  let s1 = `value: ${x1}`
  if (s1 !== "value: undefined") {
    throw new Error("template string failed, got " + s1)
  }

  let x2: string | undefined = undefined
  let s2 = `value: ${x2}`
  if (s2 !== "value: undefined") {
    throw new Error("template string failed, got " + s2)
  }
}
