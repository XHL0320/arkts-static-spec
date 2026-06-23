/**
 * @id LEX_02_09_02_010_PASS_MAX_LONG
 * @expect compile-pass
 * @section 2.9.2
 * @design long 最大值边界
 * @note compile-pass 用例：验证 max(long) 边界
 */

// max(long) = 9223372036854775807
const max_long1: long = 0x7FFF_FFFF_FFFF_FFFF
const max_long2: long = 9223372036854775807
