/**
 * @id LEX_02_09_06_010_FAIL_UNTERMINATED_STRING
 * @expect compile-fail
 * @section 2.9.6
 * @design 未终止的字符串
 * @note compile-fail 用例：验证编译器拒绝未终止的字符串
 */

// 未终止的字符串，编译失败
let s: string = "Hello
