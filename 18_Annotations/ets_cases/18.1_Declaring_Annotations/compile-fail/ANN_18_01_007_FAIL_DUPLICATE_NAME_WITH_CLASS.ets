/**
 * @id ANN_18_01_007_FAIL_DUPLICATE_NAME_WITH_CLASS
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解名不能与类名重复
 * @note 反向用例：@interface Position 与 class Position 重名导致编译时错误
 */
@interface Position {}

class Position {} // Compile-time error, duplicate identifier
