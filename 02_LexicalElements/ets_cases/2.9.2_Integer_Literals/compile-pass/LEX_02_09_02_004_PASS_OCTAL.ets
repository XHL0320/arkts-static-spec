/**
 * @id LEX_02_09_02_004_PASS_OCTAL
 * @expect compile-pass
 * @section 2.9.2
 * @design 八进制整数字面量
 * @note compile-pass 用例：验证八进制整数语法
 */

// 八进制整数
let x1: int = 0o777
let x2: int = 0o0
let x3: int = 0o377
let x4: int = 0O77  // 大写 O
