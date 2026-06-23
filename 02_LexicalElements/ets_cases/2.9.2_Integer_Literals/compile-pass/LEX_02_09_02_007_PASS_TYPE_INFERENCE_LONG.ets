/**
 * @id LEX_02_09_02_007_PASS_TYPE_INFERENCE_LONG
 * @expect compile-pass
 * @section 2.9.2
 * @design 整数类型推断为 long
 * @note compile-pass 用例：验证 long 类型推断
 */

// 类型推断为 long
let x1 = 0x8000_0000
let x2 = 0x7FFF_FFFF_1
let x3 = 9223372036854775807  // max(long)
