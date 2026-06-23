/**
 * @id LEX_02_09_04_013_FAIL_INVALID_HEX_BIGINT
 * @expect compile-fail
 * @section 2.9.4
 * @design 无效十六进制 bigint
 * @note compile-fail 用例：验证编译器拒绝无效的十六进制 bigint
 */

// 无效十六进制 bigint（编译失败）
let x: bigint = 0xGGn
