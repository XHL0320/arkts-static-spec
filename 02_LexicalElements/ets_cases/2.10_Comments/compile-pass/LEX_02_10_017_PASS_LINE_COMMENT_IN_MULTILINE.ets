/**
 * @id LEX_02_10_017_PASS_LINE_COMMENT_IN_MULTILINE
 * @expect compile-pass
 * @section 2.10
 * @design 单行注释在多行注释内
 * @note compile-pass 用例：验证单行注释在多行注释内（应被忽略）
 */

/* This is a multiline comment with // line comment inside */
let x1: int = 1
