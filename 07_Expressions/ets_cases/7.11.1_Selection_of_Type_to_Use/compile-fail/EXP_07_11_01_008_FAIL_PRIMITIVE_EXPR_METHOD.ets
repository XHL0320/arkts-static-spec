/**
 * @id EXP_07_11_01_008_FAIL_PRIMITIVE_EXPR_METHOD
 * @expect compile-fail
 * @section 7.11.1
 * @design expression 形式中非引用类型调用方法：null undefined 等不是类/接口/union/类型参数，应报编译时错误
 * @note 反向用例：验证非引用类型表达式调用方法时编译错误
 */
let s: string = null.toString()
