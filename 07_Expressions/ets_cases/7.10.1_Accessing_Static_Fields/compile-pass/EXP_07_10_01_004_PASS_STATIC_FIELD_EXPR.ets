/**
 * @id EXP_07_10_01_004_PASS_STATIC_FIELD_EXPR
 * @expect compile-pass
 * @section 7.10.1
 * @design 静态字段在表达式中使用：算术运算、条件判断、函数调用参数
 * @note 正向用例：验证静态字段值可在各类表达式中正常使用
 */
class Calc {
    static base: int = 10
    static limit: int = 100
    static factor: int = 2
}
function isWithinLimit(val: int): boolean {
    return val < Calc.limit
}
let result: int = Calc.base * Calc.factor + Calc.limit
let check: boolean = isWithinLimit(result)
