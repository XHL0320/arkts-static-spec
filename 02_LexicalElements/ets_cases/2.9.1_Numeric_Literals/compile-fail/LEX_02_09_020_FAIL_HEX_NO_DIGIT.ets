/**
 * @id LEX_02_09_020_FAIL_HEX_NO_DIGIT
 * @expect compile-fail
 * @section 2.9.1
 * @design 十六进制前缀后无数字
 * @note compile-fail 用例：验证编译器拒绝无效十六进制
 */

// 0x 后必须有至少一个十六进制数字
let x: int = 0x  // ❌ 应该报错：无效的十六进制字面量
