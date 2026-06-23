/**
 * @id LEX_02_09_03_010_FAIL_DOUBLE_TOO_LARGE
 * @expect compile-fail
 * @section 2.9.3
 * @design double 类型值超出范围
 * @note compile-fail 用例：验证编译器拒绝超出 double 范围的值
 */

// double 类型值超出范围，编译失败
let x: double = 1.7e309
