/**
 * @id ANN_18_05_2_002_PASS_MULTI_TARGET
 * @expect compile-pass
 * @section 18.5.2
 * @design 验证 @Target 多目标限制
 * @note 正向用例：CLASS 和 METHOD 上下文
 */
@Target({targets: [AnnotationTargets.CLASS, AnnotationTargets.CLASS_METHOD]})
@interface MyAnno {}

@MyAnno
class C {}

class D {
  @MyAnno
  foo(): void {}
}
