/**
 * @id LEX_02_09_09_005_FAIL_NULL_AS_IDENTIFIER
 * @expect compile-fail
 * @section 2.9.9
 * @design null 不能作为标识符
 * @note compile-fail 用例：验证编译器拒绝 null 作为标识符
 */

// null 不能作为标识符，编译失败
let null = 1
