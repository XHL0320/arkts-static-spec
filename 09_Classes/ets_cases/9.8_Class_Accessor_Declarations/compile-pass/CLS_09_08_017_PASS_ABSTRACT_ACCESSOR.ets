/**
 * @id CLS_09_08_017_PASS_ABSTRACT_ACCESSOR
 * @expect compile-pass
 * @section 9.8
 * @design 抽象类中的抽象 getter/setter 声明
 * @note 正向用例：abstract class 可以声明 abstract getter 和 setter，由具体子类实现
 */
abstract class Shape {
  abstract get name(): string
  abstract set name(n: string)
  abstract get area(): double
}

class Square extends Shape {
  private _name: string = ""
  private _side: double = 0.0
  get name(): string { return this._name }
  set name(n: string) { this._name = n }
  get area(): double { return this._side * this._side }
  set side(s: double) { this._side = s }
}

class Circle extends Shape {
  private _name: string = ""
  private _radius: double = 0.0
  get name(): string { return this._name }
  set name(n: string) { this._name = n }
  get area(): double { return 3.1415926 * this._radius * this._radius }
  set radius(r: double) { this._radius = r }
}

function testAbstractAccessor(): void {
  let sq: Square = new Square()
  sq.name = "SquareA"
  let sqName: string = sq.name
  sq.side = 5.0
  let sqArea: double = sq.area
  let ci: Circle = new Circle()
  ci.name = "CircleB"
  ci.radius = 3.0
  let ciArea: double = ci.area
}
