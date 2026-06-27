/**
 * @id ANN_18_01_1_018_FAIL_CLASS_FIELD_TYPE
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证自定义类不能作为注解字段类型
 * @note 反向用例：类类型不是允许的注解字段类型
 */
class MyClass {}

@interface A {
  obj: MyClass
}
