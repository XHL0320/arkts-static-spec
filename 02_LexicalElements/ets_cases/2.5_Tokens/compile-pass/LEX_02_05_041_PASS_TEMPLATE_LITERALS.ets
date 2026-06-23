/**
 * @id LEX_02_05_041_PASS_TEMPLATE_LITERALS
 * @expect compile-pass
 * @section 2.5
 * @design 模板字面量
 * @note compile-pass 用例：验证模板字面量
 */

// 模板字面量
let name = "World"
let greeting = `Hello, ${name}!`

// 多行模板字面量
let multiline = `Line 1
Line 2
Line 3`

// 嵌套表达式
let x = 10
let y = 20
let sum = `Sum: ${x + y}`
