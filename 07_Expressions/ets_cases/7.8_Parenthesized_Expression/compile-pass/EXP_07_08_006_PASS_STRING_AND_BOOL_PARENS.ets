/**
 * @id EXP_07_08_006_PASS_STRING_AND_BOOL_PARENS
 * @expect compile-pass
 * @section 7.8
 * @design 字符串和布尔型括号表达式验证：括号不影响多种类型的表达式
 * @note 正向用例：验证括号在不同类型的表达式中类型不变
 */
let s: string = ("hello")
let b: boolean = (true)
let result: string = s + b
