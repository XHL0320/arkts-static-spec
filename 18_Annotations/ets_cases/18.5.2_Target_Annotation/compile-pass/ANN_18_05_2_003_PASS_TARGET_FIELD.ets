/**
 * @id ANN_18_05_2_003_PASS_TARGET_FIELD
 * @expect compile-pass
 * @section 18.5.2
 * @design 验证 @Target CLASS_FIELD
 * @note 正向用例：注解限制在字段上
 */
@Target({targets: [AnnotationTargets.CLASS_FIELD]})
@interface MyAnno {}

class C {
  @MyAnno
  x: int = 0
}
