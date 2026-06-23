/**
 * @id LEX_02_09_021_FAIL_BINARY_INVALID
 * @expect compile-fail
 * @section 2.9.1
 * @design 二进制字面量包含非二进制数字
 * @note compile-fail 用例：验证编译器拒绝无效二进制
 */

// 0b 后只能包含 0 和 1
let x: int = 0b123  // ❌ 应该报错：无效的二进制字面量
