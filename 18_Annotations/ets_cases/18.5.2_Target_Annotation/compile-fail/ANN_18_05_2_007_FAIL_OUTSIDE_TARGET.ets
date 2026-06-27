/**
 * @id ANN_18_05_2_007_FAIL_OUTSIDE_TARGET
 * @expect compile-fail
 * @section 18.5.2
 * @design 验证注解在限制上下文之外使用报错
 * @note 反向用例：@Target 限制 CLASS，但用在方法上
 */
@Target({targets: [AnnotationTargets.CLASS]})
@interface MyAnno {}

class C {
  @MyAnno
  foo(): void {}
}
