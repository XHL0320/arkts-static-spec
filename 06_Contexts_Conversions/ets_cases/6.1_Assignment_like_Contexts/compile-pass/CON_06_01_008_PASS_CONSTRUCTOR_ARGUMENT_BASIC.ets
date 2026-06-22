/**
 * @id CON_06_01_008_PASS_CONSTRUCTOR_ARGUMENT_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Call context: 构造器调用实参类型与形参类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Point {
  x: int
  y: int
  constructor(px: int, py: int) {
    this.x = px
    this.y = py
  }
}

class Person {
  name: string
  age: int
  constructor(n: string, a: int) {
    this.name = n
    this.age = a
  }
}

function testConstructorArgumentBasic(): void {
  let p: Point = new Point(3, 5)
  let person: Person = new Person("Alice", 30)
}
