/**
 * @id ANN_18_02_020_FAIL_WRONG_TARGET_FUNCTION
 * @expect compile-fail
 * @section 18.2
 * @design 验证注解不能用于函数声明的错误位置
 * @note 反向用例：注解在函数声明位置（非 lambda）
 */
@interface MyAnno {}

function foo() @MyAnno() {}
