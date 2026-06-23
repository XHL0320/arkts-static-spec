/**
 * @id LEX_02_09_03_022_PASS_SCIENTIFIC_VARIANTS
 * @expect compile-pass
 * @section 2.9.3
 * @design 科学计数法变体
 * @note compile-pass 用例：验证科学计数法的不同变体
 */

// 科学计数法变体
let x1 = 1.5E10
let x2 = 1.5e10
let x3 = 1e-5
let x4 = 1E-5
let x5 = 1.5e+10
let x6 = 1.5E+10
let x7 = .5e10
let x8 = 1.e10
