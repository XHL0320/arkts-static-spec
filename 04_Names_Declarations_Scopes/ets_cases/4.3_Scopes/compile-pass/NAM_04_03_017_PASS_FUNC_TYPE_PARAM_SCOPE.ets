/**
 * @id NAM_04_03_017_PASS_FUNC_TYPE_PARAM_SCOPE
 * @expect compile-pass
 * @section 4.3
 * @design 函数类型参数作用域
 * @note 正向用例：验证函数声明中类型参数在函数体内可引用（§4.3 行 331）
 */
function identity<T>(x: T): T { return x; }
