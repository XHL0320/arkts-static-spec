/**
 * @id LEX_02_09_06_007_PASS_TYPE_INFERENCE
 * @expect compile-pass
 * @section 2.9.6
 * @design 类型推断
 * @note compile-pass 用例：验证字符串类型推断
 */

// 字面量类型推断
let s1 = "Hello"
let s2 = 'World'

// 运算后变为 string 类型
let s3 = "Hello" + " World"
let s4 = "Value: " + "42"
