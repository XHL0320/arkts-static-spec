/**
 * @id LEX_02_05_047_RT_TEMPLATE_LITERALS
 * @expect runtime
 * @section 2.5
 * @design 模板字面量运行时验证
 * @note runtime 用例：验证模板字面量的运行时行为
 */

function main(): void {
  // 模板字面量
  let name = "World"
  let greeting = `Hello, ${name}!`
  if (greeting !== "Hello, World!") { throw new Error("template literal failed, got " + greeting) }

  // 嵌套表达式
  let x = 10
  let y = 20
  let sum = `Sum: ${x + y}`
  if (sum !== "Sum: 30") { throw new Error("template expression failed, got " + sum) }

  // 多行模板字面量
  let multiline = `Line 1
Line 2`
  let expected = "Line 1\nLine 2"
  if (multiline !== expected) { throw new Error("multiline template failed, got " + multiline) }
}
