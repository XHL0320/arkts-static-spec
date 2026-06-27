/**
 * @id ANN_18_01_006_FAIL_ANNOTATION_AS_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解字段不能使用另一注解作为类型
 * @note 反向用例：注解字段类型不能为另一注解
 */
@interface Inner {
  value: string
}

@interface Outer {
  inner: Inner
  name: string
}
