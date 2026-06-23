/**
 * @id LEX_02_09_04_007_FAIL_BIGINT_SCIENTIFIC_NOTATION
 * @expect compile-fail
 * @section 2.9.4
 * @design bigint 不能使用科学计数法
 * @note compile-fail 用例：验证编译器拒绝科学计数法后的 n 后缀
 */

// bigint 不能使用科学计数法，编译失败
let x: bigint = 1e10n
