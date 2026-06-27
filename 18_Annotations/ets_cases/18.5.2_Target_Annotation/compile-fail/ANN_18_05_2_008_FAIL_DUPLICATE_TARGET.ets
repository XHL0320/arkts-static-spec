/**
 * @id ANN_18_05_2_008_FAIL_DUPLICATE_TARGET
 * @expect compile-fail
 * @section 18.5.2
 * @design 验证 @Target 中重复值报错
 * @note 反向用例：CLASS 重复
 */
@Target({targets: [AnnotationTargets.CLASS, AnnotationTargets.INTERFACE, AnnotationTargets.CLASS]})
@interface MyAnno {}
