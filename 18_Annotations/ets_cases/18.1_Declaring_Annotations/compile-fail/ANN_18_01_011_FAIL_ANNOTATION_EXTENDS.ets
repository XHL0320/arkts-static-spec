/**
 * @id ANN_18_01_011_FAIL_ANNOTATION_EXTENDS
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解不能使用 extends 继承
 * @note 反向用例：注解不支持继承
 */
@interface Base {}

@interface Derived extends Base {} // Compile-time error
