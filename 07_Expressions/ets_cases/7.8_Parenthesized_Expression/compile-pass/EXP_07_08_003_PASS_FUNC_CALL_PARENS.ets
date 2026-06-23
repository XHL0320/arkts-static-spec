/**
 * @id EXP_07_08_003_PASS_FUNC_CALL_PARENS
 * @expect compile-pass
 * @section 7.8
 * @design 函数调用中括号表达式：foo((a + b))，验证括号在函数实参中使用
 * @note 正向用例：验证函数实参中使用括号表达式
 */
function foo(x: int): void {}
let a: int = 1
let b: int = 2
foo((a + b))
