/**
 * @id LEX_02_10_018_PASS_MULTILINE_COMMENT_IN_LINE
 * @expect compile-pass
 * @section 2.10
 * @design 多行注释在单行注释内
 * @note compile-pass 用例：验证多行注释在单行注释内（应被忽略）
 */

// This is a line comment with /* multiline comment */ inside
let x1: int = 1
