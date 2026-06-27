/**
 * @id ANN_18_01_1_023_FAIL_UNION_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证联合类型不能作为注解字段类型
 * @note 反向用例：联合类型不是允许的注解字段类型
 */
@interface A {
  val: string | int
}
