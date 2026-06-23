/**
 * @id LEX_02_11_007_PASS_SEMICOLON_AMBIGUITY_EXPR
 * @expect compile-pass
 * @section 2.11
 * @design 分号避免表达式歧义
 * @note compile-pass 用例：验证分号避免表达式歧义
 */

// 分号避免表达式歧义
let i: int = 1
i - i++ // one expression
i; -i++ // two expressions
