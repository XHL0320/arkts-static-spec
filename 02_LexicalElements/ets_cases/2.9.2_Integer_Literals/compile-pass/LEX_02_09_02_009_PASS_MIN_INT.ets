/**
 * @id LEX_02_09_02_009_PASS_MIN_INT
 * @expect compile-pass
 * @section 2.9.2
 * @design int 最小值边界
 * @note compile-pass 用例：验证 min(int) 边界
 */

// min(int) = -2147483648
const min_int: int = -2147483647 - 1
