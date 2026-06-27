/**
 * @id ANN_18_01_1_024_FAIL_FUNCTION_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证函数类型不能作为注解字段类型
 * @note 反向用例：函数类型不是允许的注解字段类型
 */
@interface A {
  fn: () => void
}
