/**
 * @id LEX_02_09_03_013_FAIL_TRAILING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.3
 * @design 浮点数字面量不能以下划线结尾
 * @note spec: underscore must not be the last symbol of a float literal
 */
let x: double = 3.14_
