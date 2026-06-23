/**
 * @id LEX_02_09_03_008_PASS_TYPE_INFERENCE_FLOAT
 * @expect compile-pass
 * @section 2.9.3
 * @design 浮点类型推断为 float
 * @note compile-pass 用例：验证 float 类型推断
 */

// 类型推断为 float（带 f 后缀）
let x1 = 3.14f
let x2 = 1e10f
let x3 = 1234f
