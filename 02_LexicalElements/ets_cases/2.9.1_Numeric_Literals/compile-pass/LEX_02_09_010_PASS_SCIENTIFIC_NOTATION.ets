/**
 * @id LEX_02_09_010_PASS_SCIENTIFIC_NOTATION
 * @expect compile-pass
 * @section 2.9.1
 * @design 科学计数法浮点字面量
 * @note compile-pass 用例：验证科学计数法语法
 */

// 科学计数法
let x1: double = 1e10
let x2: double = 1.5e-5
let x3: double = 2E3
let x4: double = 1.5e10
