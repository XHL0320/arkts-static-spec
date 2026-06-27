/**
 * @id ANN_18_05_1_007_FAIL_INVALID_POLICY
 * @expect compile-fail
 * @section 18.5.1
 * @design 验证无效 retention 策略值导致编译错误
 * @note 反向用例：策略必须是 SOURCE/BYTECODE/RUNTIME
 */
@Retention("INVALID")
@interface MyAnno {}
