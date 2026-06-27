/**
 * @id ANN_18_01_1_020_FAIL_ANNOTATION_AS_FIELD
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证注解不能作为另一个注解的字段类型
 * @note 反向用例：注解类型不在允许的字段类型列表中
 */
@interface Inner {
  value: string
}

@interface A {
  inner: Inner
}
