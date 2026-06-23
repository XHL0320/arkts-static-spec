/**
 * @id EXP_07_08_001_PASS_BASIC_ARITHMETIC
 * @expect compile-pass
 * @section 7.8
 * @design 基本算术括号分组：(1 + 2) * 3 改变运算优先级，验证括号表达式编译通过
 * @note 正向用例：验证括号分组改变运算优先级
 */
let x: int = (1 + 2) * 3
