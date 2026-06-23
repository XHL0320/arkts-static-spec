/**
 * @id EXP_07_02_01_024_RUNTIME_OBJLIT_TARGET
 * @expect runtime
 * @section 7.2.1
 * @design 对象字面量在 target type 下正确构造
 * @note 运行时用例：验证 object literal with target type 运行时正确
 */
class Point {
  x: int = 0
  y: int = 0
}

function main(): void {
  let p: Point = {x: 10, y: 20}
  if (p.x != 10 || p.y != 20) {
    throw new Error("assertion failed: point fields incorrect")
  }
  console.log("verified")
}
