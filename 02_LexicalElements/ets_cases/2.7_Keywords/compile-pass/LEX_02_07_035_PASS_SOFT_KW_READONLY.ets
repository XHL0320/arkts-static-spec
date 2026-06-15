/**
 * @id LEX_02_07_035_PASS_SOFT_KW_READONLY
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: readonly 修饰字段
 * @note 正向用例：readonly 字段
 */
class Point035 {
  readonly x: int
  readonly y: int

  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
}

function test035(): void {
  let p: Point035 = new Point035(1, 2)
  let v: int = p.x + p.y
}
