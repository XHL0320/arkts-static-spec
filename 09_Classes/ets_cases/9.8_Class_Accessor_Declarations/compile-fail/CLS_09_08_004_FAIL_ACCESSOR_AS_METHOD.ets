/**
 * @id CLS_09_08_004_FAIL_ACCESSOR_AS_METHOD
 * @expect compile-fail
 * @section 9.8
 * @design getter/setter 被当作方法调用（带括号语法）应编译失败
 * @note 反向用例：p.age() 将 getter 当方法调用；p.age(17) 将 setter 当方法调用
 */
class Person {
  private _age: int = 0
  get age(): int { return this._age }
  set age(a: int) {
    if (a < 0) { return }
    this._age = a
  }
}

function testAccessorAsMethod(): void {
  let p: Person = new Person()
  let x: int = p.age()  // Compile-time error, getter used as method
  p.age(17)             // Compile-time error, setter used as method
}
