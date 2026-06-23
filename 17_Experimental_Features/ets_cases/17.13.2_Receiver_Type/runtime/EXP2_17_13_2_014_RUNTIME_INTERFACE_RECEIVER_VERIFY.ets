/**
 * @id EXP2_17_13_2_014_RUNTIME_INTERFACE_RECEIVER_VERIFY
 * @expect runtime
 * @section 17.13.2
 * @design 运行时验证：接口类型接收者函数通过实现类正确执行
 * @note 运行时用例：实际执行验证接口作为接收者类型
 */
interface Measurable { width: number; height: number }
class Rectangle implements Measurable { width: number = 0; height: number = 0
  constructor(w: number, h: number) { this.width = w; this.height = h } }
function area(this: Measurable): number { return this.width * this.height }
function perimeter(this: Measurable): number { return 2 * (this.width + this.height) }
function main(): void {
  let rect: Rectangle = new Rectangle(3, 4)
  let a: number = rect.area()
  if (a != 12) { throw new Error("assertion failed: expected 12, got " + a) }
  let p: number = rect.perimeter()
  if (p != 14) { throw new Error("assertion failed: expected 14, got " + p) }
  console.log("verified")
}
