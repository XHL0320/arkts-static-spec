/**
 * @id ANN_18_01_1_021_FAIL_OBJECT_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证 Object 类型不能作为注解字段类型
 * @note 反向用例：Object 不是允许的注解字段类型
 */
@interface A {
  obj: Object
}
