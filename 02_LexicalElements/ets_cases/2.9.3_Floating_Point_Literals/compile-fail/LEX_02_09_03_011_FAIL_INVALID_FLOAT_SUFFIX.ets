/**
 * @id LEX_02_09_03_011_FAIL_INVALID_FLOAT_SUFFIX
 * @expect compile-fail
 * @section 2.9.3
 * @design 无效的 float 后缀
 * @note compile-fail 用例：验证编译器拒绝无效的 float 后缀
 */

// 无效的 float 后缀，编译失败
let x: double = 3.14d
