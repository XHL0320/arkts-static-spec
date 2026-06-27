/**
 * @id ANN_18_01_009_FAIL_IMPLEMENTS_ANNOTATION
 * @expect compile-fail
 * @section 18.1
 * @design 验证类不能 implements 注解
 * @note 反向用例：注解不定义类型，不能用作接口实现
 */
@interface Position {}

class A implements Position {} // Compile-time error
