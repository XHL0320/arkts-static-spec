/**
 * @id LEX_02_09_07_006_FAIL_UNESCAPED_BACKTICK
 * @expect compile-fail
 * @section 2.9.7
 * @design 未转义的反引号
 * @note compile-fail 用例：验证编译器拒绝未转义的反引号
 */

// 未转义的反引号，编译失败
let s = `This is an unescaped ` backtick`
