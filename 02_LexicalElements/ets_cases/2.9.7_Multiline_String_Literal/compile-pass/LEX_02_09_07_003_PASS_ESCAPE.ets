/**
 * @id LEX_02_09_07_003_PASS_ESCAPE
 * @expect compile-pass
 * @section 2.9.7
 * @design 转义序列
 * @note compile-pass 用例：验证多行字符串中的转义序列
 */

// 转义反引号
let s1 = `This is a \` backtick`

// 转义反斜杠
let s2 = `This is a \\ backslash`

// 其他转义序列
let s3 = `Tab:\t Newline:\n`
