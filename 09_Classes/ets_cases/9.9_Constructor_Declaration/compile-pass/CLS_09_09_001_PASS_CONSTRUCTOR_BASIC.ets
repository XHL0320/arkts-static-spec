/**
 * @id CLS_09_09_001_PASS_CONSTRUCTOR_BASIC
 * @expect compile-pass
 * @section 9.9
 * @design 构造器基本语法：constructor 修饰符+参数+体
 * @note 正向用例：合法的构造器声明
 */
class Point001 {
  private _x: int
  private _y: int
  constructor(x: int, y: int) {
    this._x = x
    this._y = y
  }
}
class Line001 {
  private _start: Point001
  private _end: Point001
  constructor(start: Point001, end: Point001) {
    this._start = start
    this._end = end
  }
  get length(): double {
    return 1.0
  }
}
