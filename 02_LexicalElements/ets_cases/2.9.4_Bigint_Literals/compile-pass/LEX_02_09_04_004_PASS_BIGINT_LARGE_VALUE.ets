/**
 * @id LEX_02_09_04_004_PASS_BIGINT_LARGE_VALUE
 * @expect compile-pass
 * @section 2.9.4
 * @design 大数值 bigint
 * @note compile-pass 用例：验证大数值 bigint 语法
 */

// 大数值 bigint（超出 long 范围）
let x1: bigint = 9223372036854775808n  // max(long) + 1
let x2: bigint = 999999999999999999999n
let x3: bigint = 1000000000000000000000n
