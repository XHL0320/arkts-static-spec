/**
 * @id LEX_02_08_034_PASS_OPERATOR_PRECEDENCE
 * @expect compile-pass
 * @section 2.8
 * @design 运算符优先级
 * @note compile-pass 用例：验证运算符优先级
 */

// 运算符优先级
// 乘法优先于加法
let x1 = 2 + 3 * 4  // 14

// 指数优先于乘法
let x2 = 2 * 3 ** 2  // 18

// 逻辑与优先于逻辑或
let x3 = true || false && false  // true

// 三元运算符优先级
let x4 = true ? 1 : 2
