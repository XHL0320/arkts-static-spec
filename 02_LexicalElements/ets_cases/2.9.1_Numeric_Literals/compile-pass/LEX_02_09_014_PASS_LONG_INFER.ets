/**
 * @id LEX_02_09_014_PASS_LONG_INFER
 * @expect compile-pass
 * @section 2.9.1
 * @design long 类型推断（超出 int 范围）
 * @note compile-pass 用例：验证 long 类型推断
 */

// 超出 int 范围的整数推断为 long
let x = 2147483648
let y = -2147483649
