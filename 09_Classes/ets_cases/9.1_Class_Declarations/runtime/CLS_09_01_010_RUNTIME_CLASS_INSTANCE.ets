/**
 * @id CLS_09_01_010_RUNTIME_CLASS_INSTANCE
 * @expect runtime
 * @section 9.1
 * @design 创建类实例并验证字段访问
 * @note 运行时用例：验证类实例化与字段读写
 */
class SimplePoint {
  x: int
  y: int
  constructor(px: int, py: int) {
    this.x = px
    this.y = py
  }
}

function main(): void {
  let p = new SimplePoint(3, 4)
  if (p.x != 3) {
    throw new Error("p.x should be 3")
  }
  if (p.y != 4) {
    throw new Error("p.y should be 4")
  }
  p.x = 10
  if (p.x != 10) {
    throw new Error("p.x should be 10 after assignment")
  }
  console.log("Class instance verified")
}

