/**
 * @id LEX_02_09_05_004_PASS_BOOLEAN_NOT
 * @expect compile-pass
 * @section 2.9.5
 * @design 布尔 NOT 运算
 * @note compile-pass 用例：验证布尔 NOT 运算语法
 */

// 布尔 NOT 运算
let x1: boolean = !true
let x2: boolean = !false
let x3: boolean = !x1
