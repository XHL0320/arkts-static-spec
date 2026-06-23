/**
 * @id LEX_02_11_005_PASS_SEMICOLON_MULTI_EXPR
 * @expect compile-pass
 * @section 2.11
 * @design 单行多个表达式
 * @note compile-pass 用例：验证单行多个表达式
 */

// 单行多个表达式
let x1: int = 1; let x2: int = 2; let x3: int = x1 + x2
