/**
 * @id EXP_07_02_05_001_PASS_CLASS_INSTANCE
 * @expect compile-pass
 * @section 7.2.5
 * @design 类实例创建表达式（new）基本编译通过：构造函数带多个参数，验证 new 表达式整体编译正确
 * @note 正向用例：验证 Class Instance Creation Expressions 编译通过
 */
class Point {
  x: int
  y: int

  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
}

function getX(): int {
  return 10
}

function getY(): int {
  return 20
}

let p: Point = new Point(getX(), getY())
let sum: int = p.x + p.y
