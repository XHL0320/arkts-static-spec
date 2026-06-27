/**
 * @id ANN_18_05_2_006_FAIL_TARGET_ON_CLASS
 * @expect compile-fail
 * @section 18.5.2
 * @design 验证 @Target 不能用于非注解声明
 * @note 反向用例：@Target 在 class 上
 */
@Target({targets: [AnnotationTargets.CLASS]})
class C {}
