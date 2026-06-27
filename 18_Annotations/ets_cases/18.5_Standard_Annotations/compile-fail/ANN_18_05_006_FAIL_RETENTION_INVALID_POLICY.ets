/**
 * @id ANN_18_05_006_FAIL_RETENTION_INVALID_POLICY
 * @expect compile-fail
 * @section 18.5
 * @design 验证 @Retention 使用无效策略值
 * @note 反向用例：非法的 retention policy 值
 */
@Retention("INVALID")
@interface MyAnno {}
