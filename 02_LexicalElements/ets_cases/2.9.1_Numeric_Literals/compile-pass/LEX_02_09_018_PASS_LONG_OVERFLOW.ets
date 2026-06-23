/**
 * @id LEX_02_09_018_PASS_LONG_OVERFLOW
 * @expect compile-pass
 * @section 2.9.1
 * @design long 超出 int 范围
 * @note compile-pass 用例：验证 long 类型字面量
 */

// 超出 int 范围的整数
let x: long = 2147483648
let y: long = 9223372036854775807
