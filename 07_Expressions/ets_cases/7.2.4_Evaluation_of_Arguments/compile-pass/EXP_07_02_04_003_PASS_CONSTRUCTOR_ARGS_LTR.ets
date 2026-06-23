/**
 * @id EXP_07_02_04_003_PASS_CONSTRUCTOR_ARGS_LTR
 * @expect compile-pass
 * @section 7.2.4
 * @design 构造函数(new)调用参数从左到右求值基本编译通过：验证 new 表达式中参数从左到右编译通过
 * @note 正向用例：验证构造函数调用的参数从左到右编译通过
 */
function computeX(): int {
  return 10
}

function computeY(): int {
  return 20
}

class Point {
  x: int
  y: int

  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
}

let p: Point = new Point(computeX(), computeY())
