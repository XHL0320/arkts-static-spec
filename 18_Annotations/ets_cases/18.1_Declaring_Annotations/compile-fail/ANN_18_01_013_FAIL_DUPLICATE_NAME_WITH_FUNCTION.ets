/**
 * @id ANN_18_01_013_FAIL_DUPLICATE_NAME_WITH_FUNCTION
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解名不能与函数名重复
 * @note 反向用例：@interface Position 与 function Position 重名导致编译时错误
 */
@interface Position {}

function Position(): void {} // Compile-time error, duplicate identifier
