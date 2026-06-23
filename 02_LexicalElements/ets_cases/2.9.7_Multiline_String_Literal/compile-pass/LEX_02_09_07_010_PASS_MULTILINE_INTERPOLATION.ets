/**
 * @id LEX_02_09_07_010_PASS_MULTILINE_INTERPOLATION
 * @expect compile-pass
 * @section 2.9.7
 * @design 多行字符串插值
 * @note compile-pass 用例：验证多行字符串插值语法
 */

// 多行字符串插值
let name = "World"
let s1 = `Hello, ${name}!`

let x = 10
let y = 20
let s2 = `Sum: ${x + y}`

// 多行插值
let s3 = `Line 1: ${name}
Line 2: ${x + y}`
