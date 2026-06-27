/**
 * @id ANN_18_05_002_PASS_TARGET_META
 * @expect compile-pass
 * @section 18.5
 * @design 验证 @Target 作为 meta-annotation 使用
 * @note 正向用例：@Target 注解另一个注解
 */
@Target({targets: [AnnotationTargets.CLASS, AnnotationTargets.CLASS_METHOD]})
@interface MyAnno {}
