/**
 * @id LEX_02_09_06_024_PASS_STRING_INTERPOLATION
 * @expect compile-pass
 * @section 2.9.6
 * @design 字符串插值
 * @note compile-pass 用例：验证字符串插值语法
 */

// 字符串插值
let name = "World"
let greeting = `Hello, ${name}!`

let x = 10
let y = 20
let sum = `Sum: ${x + y}`

// 嵌套插值
let inner = "inner"
let outer = `outer ${inner} string`
