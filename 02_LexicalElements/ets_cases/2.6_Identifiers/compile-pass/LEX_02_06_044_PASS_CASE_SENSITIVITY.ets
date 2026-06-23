/**
 * @id LEX_02_06_044_PASS_CASE_SENSITIVITY
 * @expect compile-pass
 * @section 2.6
 * @design 标识符大小写敏感
 * @note compile-pass 用例：验证标识符大小写敏感
 */

// 大小写敏感的标识符
let myVar = 1
let MyVar = 2
let MYVAR = 3
let myvar = 4

// 不同大小写的标识符可以共存
let x = 10
let X = 20
let _x = 30
let _X = 40
