/**
 * @id ANN_18_01_1_019_FAIL_INTERFACE_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证接口不能作为注解字段类型
 * @note 反向用例：接口类型不是允许的注解字段类型
 */
interface MyInterface {
  foo(): void
}

@interface A {
  obj: MyInterface
}
