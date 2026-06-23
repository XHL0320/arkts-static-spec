/**
 * @id LEX_02_09_06_018_PASS_NULL_ESCAPE
 * @expect compile-pass
 * @section 2.9.6
 * @design 空字符转义
 * @note compile-pass 用例：验证 \0 空字符转义语法
 */

// 空字符转义
let s1: string = "\0"
let s2: string = "Hello\0World"
let s3: string = "\0\0\0"
