/**
 * @id ANN_18_01_1_022_FAIL_UNDEFINED_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证 void/undefined 不能作为注解字段类型
 * @note 反向用例：void/undefined 不是允许的注解字段类型
 */
@interface A {
  val: void
}
