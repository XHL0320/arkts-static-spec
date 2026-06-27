/**
 * @id ANN_18_05_1_006_FAIL_ON_CLASS
 * @expect compile-fail
 * @section 18.5.1
 * @design 验证 @Retention 不能用于非注解声明
 * @note 反向用例：@Retention 在 class 上
 */
@Retention("SOURCE")
class C {}
