/**
 * @id ANN_18_05_1_008_FAIL_EMPTY_POLICY
 * @expect compile-fail
 * @section 18.5.1
 * @design 验证空字符串作为策略值导致编译错误
 * @note 反向用例：空字符串不是有效策略
 */
@Retention("")
@interface MyAnno {}
