/**
 * @id LEX_02_09_09_014_PASS_NULL_LOGICAL_OP
 * @expect compile-pass
 * @section 2.9.9
 * @design null 在逻辑运算中
 * @note compile-pass 用例：验证 null 在逻辑运算中的使用
 */

// null 在逻辑运算中
let x1: int | null = null
let x2: int | null = 1

let r1 = x1 || x2
let r2 = x1 && x2
let r3 = x1 ?? x2
