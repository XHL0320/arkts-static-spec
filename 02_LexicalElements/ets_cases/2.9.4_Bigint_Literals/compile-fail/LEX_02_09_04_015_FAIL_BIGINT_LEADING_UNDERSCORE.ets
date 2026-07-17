/**
 * @id LEX_02_09_04_015_FAIL_BIGINT_LEADING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.4
 * @design bigint字面量不能以下划线开头
 * @note spec: underscore must not be the first symbol of a bigint literal
 */
let x: bigint = _123n
