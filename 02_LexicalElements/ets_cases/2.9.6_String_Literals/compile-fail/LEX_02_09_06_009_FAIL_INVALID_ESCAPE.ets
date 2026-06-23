/**
 * @id LEX_02_09_06_009_FAIL_INVALID_ESCAPE
 * @expect compile-fail
 * @section 2.9.6
 * @design 无效转义序列
 * @note compile-fail 用例：验证编译器拒绝无效转义序列（数字 1-9）
 */

// 无效转义序列（数字 1-9），编译失败
let s: string = "\1"
