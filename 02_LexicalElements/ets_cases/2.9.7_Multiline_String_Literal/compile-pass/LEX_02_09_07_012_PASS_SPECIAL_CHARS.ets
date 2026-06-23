/**
 * @id LEX_02_09_07_012_PASS_SPECIAL_CHARS
 * @expect compile-pass
 * @section 2.9.7
 * @design 特殊字符在多行字符串中
 * @note compile-pass 用例：验证特殊字符在多行字符串中的使用
 */

// 特殊字符
let s1 = `Hello, World! 123`
let s2 = `Special chars: !@#$%^&*()`
let s3 = `Unicode: 你好世界`
let s4 = `Emoji: 😀`
