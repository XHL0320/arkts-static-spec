/**
 * @id LEX_02_09_022_FAIL_OCTAL_INVALID
 * @expect compile-fail
 * @section 2.9.1
 * @design 八进制字面量包含非八进制数字
 * @note compile-fail 用例：验证编译器拒绝无效八进制
 */

// 0o 后只能包含 0-7
let x: int = 0o89  // ❌ 应该报错：无效的八进制字面量
