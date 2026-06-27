/**
 * @id ANN_18_02_021_FAIL_OVERRIDDEN_FIELD
 * @expect compile-fail
 * @section 18.2
 * @design 验证注解不能用于 override 字段
 * @note 反向用例：子类 override 字段加注解
 */
@interface MyAnno {}

class Base {
  field: int = 1
}

class Derived extends Base {
  @MyAnno
  field: int = 2
}
