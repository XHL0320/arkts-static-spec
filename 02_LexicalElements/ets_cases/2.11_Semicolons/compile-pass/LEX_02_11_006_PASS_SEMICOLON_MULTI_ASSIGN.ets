/**
 * @id LEX_02_11_006_PASS_SEMICOLON_MULTI_ASSIGN
 * @expect compile-pass
 * @section 2.11
 * @design 单行多个赋值
 * @note compile-pass 用例：验证单行多个赋值
 */

// 单行多个赋值
let x1: int = 0
let x2: int = 0
x1 = 1; x2 = 2
