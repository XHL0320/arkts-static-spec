/**
 * @id LEX_02_09_09_004_PASS_NULL_COMPARISON
 * @expect compile-pass
 * @section 2.9.9
 * @design null 比较运算
 * @note compile-pass 用例：验证 null 比较运算
 */

// null 比较运算
let x1: null = null
let x2: null = null

let b1 = x1 === x2
let b2 = x1 !== x2
let b3 = x1 === null
let b4 = x1 !== null
