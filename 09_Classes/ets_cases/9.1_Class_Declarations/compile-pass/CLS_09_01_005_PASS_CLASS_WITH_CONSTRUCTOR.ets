/**
 * @id CLS_09_01_005_PASS_CLASS_WITH_CONSTRUCTOR
 * @expect compile-pass
 * @section 9.1
 * @design 含构造器的类声明编译通过
 * @note 正向用例：验证类声明含构造器
 */
class Person {
  name: string
  age: int
  constructor(n: string, a: int) {
    this.name = n
    this.age = a
  }
}

