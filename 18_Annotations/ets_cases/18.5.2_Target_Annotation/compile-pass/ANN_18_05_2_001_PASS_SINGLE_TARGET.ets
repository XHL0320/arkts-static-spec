/**
 * @id ANN_18_05_2_001_PASS_SINGLE_TARGET
 * @expect compile-pass
 * @section 18.5.2
 * @design 验证 @Target 单目标限制
 * @note 正向用例：仅 CLASS 上下文
 */
@Target({targets: [AnnotationTargets.CLASS]})
@interface MyAnno {}

@MyAnno
class C {}
