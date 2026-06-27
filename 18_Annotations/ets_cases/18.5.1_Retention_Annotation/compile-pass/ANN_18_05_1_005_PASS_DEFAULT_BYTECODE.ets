/**
 * @id ANN_18_05_1_005_PASS_DEFAULT_BYTECODE
 * @expect compile-pass
 * @section 18.5.1
 * @design 验证默认 retention 策略为 BYTECODE（未指定时）
 * @note 正向用例：无 @Retention，默认 BYTECODE
 */
@interface MyAnno {}
