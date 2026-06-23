/**
 * @id EXP_07_08_002_PASS_NESTED_PARENS
 * @expect compile-pass
 * @section 7.8
 * @design 多层嵌套括号：(((1 + 2))) 验证多层括号嵌套编译通过
 * @note 正向用例：验证嵌套括号表达式
 */
let x: int = (((1 + 2)))
