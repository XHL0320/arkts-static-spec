/**
 * @id ANN_18_05_1_002_PASS_BYTECODE_SHORT
 * @expect compile-pass
 * @section 18.5.1
 * @design 验证 @Retention("BYTECODE") 简写形式
 * @note 正向用例：BYTECODE 策略简写
 */
@Retention("BYTECODE")
@interface MyAnno {}
