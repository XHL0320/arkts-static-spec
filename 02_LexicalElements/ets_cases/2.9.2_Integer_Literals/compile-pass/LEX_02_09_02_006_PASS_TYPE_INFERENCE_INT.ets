/**
 * @id LEX_02_09_02_006_PASS_TYPE_INFERENCE_INT
 * @expect compile-pass
 * @section 2.9.2
 * @design 整数类型推断为 int
 * @note compile-pass 用例：验证 int 类型推断
 */

// 类型推断为 int
let x1 = 0
let x2 = 1
let x3 = 0x7F
let x4 = 0x7FFF_FFFF  // max(int)
let x5 = 2147483647    // max(int)
