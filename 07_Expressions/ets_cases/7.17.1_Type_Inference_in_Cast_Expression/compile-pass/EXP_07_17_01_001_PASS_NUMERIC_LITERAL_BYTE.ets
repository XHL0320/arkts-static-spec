/**
 * @id EXP_07_17_01_001_PASS_NUMERIC_LITERAL_BYTE
 * @expect compile-pass
 * @section 7.17.1
 * @design 验证数值字面量 as byte 编译通过（值在 byte 范围内）
 * @note 正向用例：数值字面量 as 目标数值类型
 */
let x = 1 as byte
let y = 100 as byte
let z = -128 as byte
