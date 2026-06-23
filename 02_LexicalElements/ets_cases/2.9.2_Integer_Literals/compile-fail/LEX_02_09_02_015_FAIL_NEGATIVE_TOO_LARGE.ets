/**
 * @id LEX_02_09_02_015_FAIL_NEGATIVE_TOO_LARGE
 * @expect compile-fail
 * @section 2.9.2
 * @design int 类型赋值超出负数范围
 * @note compile-fail 用例：验证编译器拒绝 int 范围外的负数赋值
 */

// int 类型赋值超出负数范围，编译失败
const err: int = -2147483649
