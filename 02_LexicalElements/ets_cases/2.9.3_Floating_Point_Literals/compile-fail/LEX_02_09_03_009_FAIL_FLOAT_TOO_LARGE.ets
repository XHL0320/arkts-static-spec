/**
 * @id LEX_02_09_03_009_FAIL_FLOAT_TOO_LARGE
 * @expect compile-fail
 * @section 2.9.3
 * @design float 类型值超出范围
 * @note compile-fail 用例：验证编译器拒绝超出 float 范围的值
 */

// float 类型值超出范围，编译失败
let x: float = 3.4e39f
