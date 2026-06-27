/**
 * @id ANN_18_05_2_004_PASS_TARGET_PARAMETER
 * @expect compile-pass
 * @section 18.5.2
 * @design 验证 @Target PARAMETER
 * @note 正向用例：注解限制在参数上
 */
@Target({targets: [AnnotationTargets.PARAMETER]})
@interface MyAnno {}

function foo(@MyAnno x: int): void {}
