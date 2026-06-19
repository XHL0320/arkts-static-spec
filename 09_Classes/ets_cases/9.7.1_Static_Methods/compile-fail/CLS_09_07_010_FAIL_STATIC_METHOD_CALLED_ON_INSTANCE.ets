/**
 * @id CLS_09_07_010_FAIL_STATIC_METHOD_CALLED_ON_INSTANCE
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法只能通过类名限定调用，不能通过实例对象调用
 * @note 反向用例：通过实例对象调用静态方法导致编译错误
 */
class Class010 {
  private value: int = 42

  static getClassName(): string {
    return "Class010"
  }

  static compute(x: int, y: int): int {
    return x + y
  }

  instanceMethod(): void {
    let _: string = this.getClassName()
  }
}

function testStaticOnInstance(): void {
  let obj: Class010 = new Class010()
  let _: string = obj.getClassName()
  let __: int = obj.compute(1, 2)
}
