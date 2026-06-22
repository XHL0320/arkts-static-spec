/**
 * @id CLS_09_02_003_PASS_NO_EXTENDS_IMPLICIT_OBJECT
 * @expect compile-pass
 * @section 9.2
 * @design 没有extends子句的类隐式继承Object，编译通过
 * @note 正向用例：验证无extends子句时类隐式继承Object
 */
class PlainClass {
  public data: string = ""
}
