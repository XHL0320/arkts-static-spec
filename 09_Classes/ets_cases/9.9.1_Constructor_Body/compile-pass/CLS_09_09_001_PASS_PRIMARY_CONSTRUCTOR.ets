/**
 * @id CLS_09_09_001_PASS_PRIMARY_CONSTRUCTOR
 * @expect compile-pass
 * @section 9.9.1
 * @design 主构造器基本用法：super()调用+字段初始化
 * @note 正向用例：验证主构造器声明和this字段初始化
 */
class Point {
  x: int = 0
  y: int = 0
  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
}
function test(): void {
  let p: Point = new Point(10, 20)
}
