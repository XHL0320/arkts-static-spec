/**
 * @id EXP_07_08_004_PASS_CONDITION_PARENS
 * @expect compile-pass
 * @section 7.8
 * @design 条件语句中括号表达式：if ((x > 0))，验证括号在条件中使用
 * @note 正向用例：验证条件语句中使用括号表达式
 */
function test(x: int): int {
    if ((x > 0)) {
        return x
    }
    return 0
}
let result: int = test(5)
