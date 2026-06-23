/**
 * @id LEX_02_09_08_005_FAIL_UNDEFINED_AS_IDENTIFIER
 * @expect compile-fail
 * @section 2.9.8
 * @design undefined 不能作为标识符
 * @note compile-fail 用例：验证编译器拒绝 undefined 作为标识符
 */

// undefined 不能作为标识符，编译失败
let undefined = 1
