/**
 * @id LEX_02_09_08_014_PASS_UNDEFINED_LOGICAL_OP
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 在逻辑运算中
 * @note compile-pass 用例：验证 undefined 在逻辑运算中的使用
 */

// undefined 在逻辑运算中
let x1: int | undefined = undefined
let x2: int | undefined = 1

let r1 = x1 || x2
let r2 = x1 && x2
let r3 = x1 ?? x2
