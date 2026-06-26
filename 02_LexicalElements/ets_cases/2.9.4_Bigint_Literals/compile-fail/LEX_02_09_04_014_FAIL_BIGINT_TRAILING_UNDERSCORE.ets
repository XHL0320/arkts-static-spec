/**
 * @id LEX_02_09_04_014_FAIL_BIGINT_TRAILING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.4
 * @design bigint 下划线不能在 n 前（123_n）
 * @note compile-fail 用例：验证 bigint 末尾下划线后接 n 非法
 */
let x: bigint = 123_n
