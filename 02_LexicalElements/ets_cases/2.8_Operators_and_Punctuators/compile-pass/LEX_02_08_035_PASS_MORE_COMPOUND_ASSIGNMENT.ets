/**
 * @id LEX_02_08_035_PASS_MORE_COMPOUND_ASSIGNMENT
 * @expect compile-pass
 * @section 2.8
 * @design 更多复合赋值
 * @note compile-pass 用例：验证更多复合赋值运算符
 */

// 指数赋值
let x1 = 2
x1 **= 3

// 移位赋值
let x2 = 1
x2 <<= 2

let x3 = 8
x3 >>= 1

let x4 = -1
x4 >>>= 1
