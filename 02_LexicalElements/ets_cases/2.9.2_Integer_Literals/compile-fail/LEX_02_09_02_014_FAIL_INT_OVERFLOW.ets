/**
 * @id LEX_02_09_02_014_FAIL_INT_OVERFLOW
 * @expect compile-fail
 * @section 2.9.2
 * @design int 类型赋值超出范围
 * @note compile-fail 用例：验证编译器拒绝 int 范围外的赋值
 */

// int 类型赋值超出范围，编译失败
const err1: int = 2147483648
