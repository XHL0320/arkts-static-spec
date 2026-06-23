/**
 * @id LEX_02_09_04_006_FAIL_BIGINT_FLOAT_SUFFIX
 * @expect compile-fail
 * @section 2.9.4
 * @design bigint 不能有小数点
 * @note compile-fail 用例：验证编译器拒绝小数点后的 n 后缀
 */

// bigint 不能有小数点，编译失败
let x: bigint = 3.14n
