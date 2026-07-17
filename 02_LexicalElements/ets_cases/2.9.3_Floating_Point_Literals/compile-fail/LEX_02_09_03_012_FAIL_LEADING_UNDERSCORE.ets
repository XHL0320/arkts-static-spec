/**
 * @id LEX_02_09_03_012_FAIL_LEADING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.3
 * @design 浮点数字面量不能以下划线开头
 * @note spec: underscore must not be the first symbol of a float literal
 */
let x: double = _3.14
