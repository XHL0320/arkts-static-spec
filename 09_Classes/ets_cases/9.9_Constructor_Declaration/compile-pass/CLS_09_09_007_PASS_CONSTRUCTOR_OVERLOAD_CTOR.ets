/**
 * @id CLS_09_09_007_PASS_CONSTRUCTOR_OVERLOAD_CTOR
 * @expect compile-pass
 * @section 9.9
 * @design 构造器使用默认参数实现重载效果
 * @note 正向用例：通过默认参数实现多构造器效果
 */
class MultiCtor007 {
  private _x: int
  private _y: int
  constructor(x: int = 0, y: int = 0) {
    this._x = x
    this._y = y
  }
}
