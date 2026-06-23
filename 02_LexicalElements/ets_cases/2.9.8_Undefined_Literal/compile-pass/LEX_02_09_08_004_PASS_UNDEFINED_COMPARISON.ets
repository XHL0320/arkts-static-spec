/**
 * @id LEX_02_09_08_004_PASS_UNDEFINED_COMPARISON
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 比较运算
 * @note compile-pass 用例：验证 undefined 比较运算
 */

// undefined 比较运算
let x1: undefined = undefined
let x2: undefined = undefined

let b1 = x1 === x2
let b2 = x1 !== x2
let b3 = x1 === undefined
let b4 = x1 !== undefined
