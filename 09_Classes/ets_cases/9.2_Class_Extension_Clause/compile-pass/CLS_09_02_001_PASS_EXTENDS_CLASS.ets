/**
 * @id CLS_09_02_001_PASS_EXTENDS_CLASS
 * @expect compile-pass
 * @section 9.2
 * @design 类通过extends继承另一个类，编译通过
 * @note 正向用例：验证extends子句指向类类型的基本用法
 */
class BaseClass {
  public value: int = 0
  public getValue(): int {
    return this.value
  }
}
class SubClass extends BaseClass {
  public extra: string = ""
}
