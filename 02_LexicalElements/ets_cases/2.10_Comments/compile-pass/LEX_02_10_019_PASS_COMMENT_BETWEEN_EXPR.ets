/**
 * @id LEX_02_10_019_PASS_COMMENT_BETWEEN_EXPR
 * @expect compile-pass
 * @section 2.10
 * @design 注释在表达式之间
 * @note compile-pass 用例：验证注释在表达式之间
 */

let x1: int = 1 /* comment */ + 2
let x2: int = 1 // comment
+ 2
