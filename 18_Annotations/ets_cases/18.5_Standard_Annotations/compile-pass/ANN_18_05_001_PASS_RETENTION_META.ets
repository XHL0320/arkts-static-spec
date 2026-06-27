/**
 * @id ANN_18_05_001_PASS_RETENTION_META
 * @expect compile-pass
 * @section 18.5
 * @design 验证 @Retention 作为 meta-annotation 使用
 * @note 正向用例：@Retention 注解另一个注解
 */
@Retention("SOURCE")
@interface MyAnno {}
