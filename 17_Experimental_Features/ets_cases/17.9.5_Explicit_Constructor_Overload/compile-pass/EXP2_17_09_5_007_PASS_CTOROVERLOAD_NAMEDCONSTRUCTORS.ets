/**
 * @id EXP2_17_09_5_007_PASS_CTOROVERLOAD_NAMEDCONSTRUCTORS
 * @expect compile-pass
 * @section 17.9.5
 * @design overload constructor 包含命名构造函数
 * @note 正向用例：命名构造函数参与 overload
 */
class Point2D {
  private x: int
  private y: int
  constructor origin() { this.x = 0; this.y = 0 }
  constructor fromCoords(a: int, b: int) { this.x = a; this.y = b }
  constructor fromSingle(v: int) { this.x = v; this.y = v }
  overload constructor { origin, fromCoords, fromSingle }
}
