/**
 * @id EXP_07_08_007_FAIL_EMPTY_PARENS
 * @expect compile-fail
 * @section 7.8
 * @design 空括号不是有效表达式：() 不符合 '(' expression ')' 语法规则，应报编译时错误
 * @note 反向用例：验证空括号作为表达式应产生编译时错误
 */
let x: int = ()
