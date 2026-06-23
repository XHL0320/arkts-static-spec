/**
 * @id CLS_09_07_006_FAIL_STATIC_METHOD_SUPER_KEYWORD
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法中禁止使用super关键字，静态方法不参与继承链的对象引用
 * @note 反向用例：静态方法内使用super调用父类方法导致编译错误
 */
class Base006 {
  x: int = 10

  foo(): void {
    let _: int = this.x
  }
}

class BadSuper006 extends Base006 {
  y: int = 20

  static callSuperFoo(): void {
    super.foo()
  }

  static accessSuperField(): int {
    return super.x
  }
}
