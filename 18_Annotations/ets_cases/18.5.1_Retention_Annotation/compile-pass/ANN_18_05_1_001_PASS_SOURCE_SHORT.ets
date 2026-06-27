/**
 * @id ANN_18_05_1_001_PASS_SOURCE_SHORT
 * @expect compile-pass
 * @section 18.5.1
 * @design 验证 @Retention("SOURCE") 简写形式
 * @note 正向用例：SOURCE 策略简写
 */
@Retention("SOURCE")
@interface MyAnno {}
