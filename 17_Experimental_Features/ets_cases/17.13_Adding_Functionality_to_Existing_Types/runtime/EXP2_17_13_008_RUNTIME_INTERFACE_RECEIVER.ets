/**
 * @id EXP2_17_13_008_RUNTIME_INTERFACE_RECEIVER
 * @expect runtime
 * @section 17.13
 * @design 运行时验证：接口类型接收者函数通过实现类实例正确执行
 * @note 运行时用例：实际执行验证接口接收者函数的运行时行为
 */
interface Shape { area: number }
class Square implements Shape { area: number = 0; side: number = 0
  constructor(side: number) { this.side = side; this.area = side * side } }
function getArea(this: Shape): number { return this.area }
function main(): void {
  let sq: Square = new Square(5)
  let a1: number = sq.getArea()
  if (a1 != 25) { throw new Error("assertion failed: expected 25, got " + a1) }
  let a2: number = getArea(sq)
  if (a2 != 25) { throw new Error("assertion failed: expected 25, got " + a2) }
  console.log("verified")
}
