/**
 * @id ANN_18_05_1_004_PASS_RUNTIME_LONG
 * @expect compile-pass
 * @section 18.5.1
 * @design 验证 @Retention({policy: "RUNTIME"}) 完整形式
 * @note 正向用例：RUNTIME 策略完整对象字面量
 */
@Retention({policy: "RUNTIME"})
@interface MyAnno {}
