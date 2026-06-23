/**
 * @id LEX_02_11_002_PASS_LINE_TERMINATOR_EXPR
 * @expect compile-pass
 * @section 2.11
 * @design 表达式语句由行分隔符终止
 * @note compile-pass 用例：验证表达式语句由行分隔符终止
 */

// 表达式语句由行分隔符终止
let x1: int = 1
let x2: int = 2
let x3: int = x1 + x2
