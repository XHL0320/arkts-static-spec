/**
 * @id CLS_09_08_001_PASS_BASIC_GETTER_SETTER
 * @expect compile-pass
 * @section 9.8
 * @design 基本的 getter 和 setter 声明，使用 private 字段作为 backing store
 * @note 正向用例：getter 有显式返回类型和无参；setter 有单参数和无返回类型；两者通过 field access 语法访问
 */
class Person {
  private _age: int = 0
  get age(): int { return this._age }
  set age(a: int) {
    if (a < 0) { return }
    this._age = a
  }
}

class Point {
  private _x: double = 0.0
  private _y: double = 0.0
  get x(): double { return this._x }
  set x(v: double) { this._x = v }
  get y(): double { return this._y }
  set y(v: double) { this._y = v }
}

function testBasicAccessor(): void {
  let p: Person = new Person()
  p.age = 25        // setter called
  let a: int = p.age // getter called
  let pt: Point = new Point()
  pt.x = 10.0
  pt.y = 20.0
  let xv: double = pt.x
  let yv: double = pt.y
}
