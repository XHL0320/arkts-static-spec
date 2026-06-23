/**
 * @id EXP_07_17_01_007_FAIL_NUMERIC_OVERFLOW
 * @expect compile-fail
 * @section 7.17.1
 * @design 验证数值字面量 as byte 超出范围编译时错误（128 > byte 范围 -128~127）
 * @note 反向用例：数值字面量超出目标类型范围
 */
let x = 128 as byte
