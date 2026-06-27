/**
 * @id ANN_18_05_1_003_PASS_RUNTIME_SHORT
 * @expect compile-pass
 * @section 18.5.1
 * @design 验证 @Retention("RUNTIME") 简写形式
 * @note 正向用例：RUNTIME 策略简写
 */
@Retention("RUNTIME")
@interface MyAnno {}
