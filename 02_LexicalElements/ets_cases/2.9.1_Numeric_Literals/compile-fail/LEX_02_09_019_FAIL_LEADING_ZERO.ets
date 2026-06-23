/**
 * @id LEX_02_09_019_FAIL_LEADING_ZERO
 * @expect compile-fail
 * @section 2.9.1
 * @design 前导零语法不支持（八进制旧语法）
 * @note compile-fail 用例：验证编译器拒绝前导零语法
 */

// 前导零语法在 ArkTS 中不支持
// 应该使用 0o 前缀表示八进制
let x: int = 0123  // ❌ 应该报错：前导零语法不支持
