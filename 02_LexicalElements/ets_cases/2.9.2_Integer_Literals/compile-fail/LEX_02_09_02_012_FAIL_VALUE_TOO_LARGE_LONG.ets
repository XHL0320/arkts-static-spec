/**
 * @id LEX_02_09_02_012_FAIL_VALUE_TOO_LARGE_LONG
 * @expect compile-fail
 * @section 2.9.2
 * @design 整数值超出 long 范围
 * @note compile-fail 用例：验证编译器拒绝超出范围的值
 */

// max(long) + 1，编译失败
const err1 = 9223372036854775808
