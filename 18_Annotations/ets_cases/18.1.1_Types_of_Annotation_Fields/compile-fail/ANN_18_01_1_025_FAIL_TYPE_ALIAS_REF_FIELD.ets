/**
 * @id ANN_18_01_1_025_FAIL_TYPE_ALIAS_REF_FIELD
 * @expect compile-fail
 * @section 18.1.1
 * @design 验证类型别名不能间接引入非法注解类型
 * @note 反向用例：类型别名指向非法类型时不能用作字段类型
 */
type MyString = Object

@interface A {
  val: MyString
}
