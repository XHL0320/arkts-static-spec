/**
 * @id CLS_09_09_002_PASS_SECONDARY_CONSTRUCTOR
 * @expect compile-pass
 * @section 9.9.1
 * @design 辅助构造器通过this()调用主构造器
 * @note 正向用例：验证secondary constructor调用same-class primary constructor
 */
class Point2 {
  x: int = 0
  y: int = 0
  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
  constructor() {
    this(0, 0)
  }
}
function test(): void {
  let p1: Point2 = new Point2(10, 20)
  let p2: Point2 = new Point2()
}
