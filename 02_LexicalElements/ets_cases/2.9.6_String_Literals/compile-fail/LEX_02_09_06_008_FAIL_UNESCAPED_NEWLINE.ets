/**
 * @id LEX_02_09_06_008_FAIL_UNESCAPED_NEWLINE
 * @expect compile-fail
 * @section 2.9.6
 * @design 字符串中未转义换行
 * @note compile-fail 用例：验证编译器拒绝字符串中的未转义换行
 */

// 字符串中包含未转义换行，编译失败
let s: string = "Hello
World"
