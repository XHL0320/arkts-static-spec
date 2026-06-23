/**
 * @id LEX_02_11_009_FAIL_MISSING_SEMICOLON
 * @expect compile-fail
 * @section 2.11
 * @design 缺少分号导致编译失败
 * @note compile-fail 用例：验证编译器拒绝缺少分号
 */

// 缺少分号导致编译失败
let x1: int = 1 let x2: int = 2
