/**
 * @id LEX_02_09_04_012_PASS_BIGINT_HEX
 * @expect compile-fail
 * @section 2.9.4
 * @design 十六进制 bigint 不支持
 * @note compile-fail 用例：验证 ArkTS 不支持十六进制 bigint
 */

// ArkTS 不支持十六进制 bigint，编译失败
let x: bigint = 0xFFn
