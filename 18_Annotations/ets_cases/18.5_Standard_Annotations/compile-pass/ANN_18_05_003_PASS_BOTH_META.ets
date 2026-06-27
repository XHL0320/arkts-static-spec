/**
 * @id ANN_18_05_003_PASS_BOTH_META
 * @expect compile-pass
 * @section 18.5
 * @design 验证 @Retention 和 @Target 同时使用
 * @note 正向用例：多个标准 meta-annotation
 */
@Retention("RUNTIME")
@Target({targets: [AnnotationTargets.CLASS, AnnotationTargets.INTERFACE]})
@interface MyAnno {}
