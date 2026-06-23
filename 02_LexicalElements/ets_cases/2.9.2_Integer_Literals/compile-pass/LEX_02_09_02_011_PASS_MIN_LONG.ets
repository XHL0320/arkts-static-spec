/**
 * @id LEX_02_09_02_011_PASS_MIN_LONG
 * @expect compile-pass
 * @section 2.9.2
 * @design long 最小值边界
 * @note compile-pass 用例：验证 min(long) 边界
 */

// min(long) = -9223372036854775808
const max_long: long = 9223372036854775807
const min_long: long = -max_long - 1
