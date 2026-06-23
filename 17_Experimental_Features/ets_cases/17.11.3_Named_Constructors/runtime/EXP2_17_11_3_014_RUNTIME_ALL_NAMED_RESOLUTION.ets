/**
 * @id EXP2_17_11_3_014_RUNTIME_ALL_NAMED_RESOLUTION
 * @expect runtime
 * @section 17.11.3
 * @design 全命名构造函数对象创建验证：验证类中只有命名构造函数时，通过 overload 解析正确调用
 * @note 运行时用例：验证全命名构造函数的类可以通过重载解析创建对象
 */
class Color {
  r: int
  g: int
  b: int

  constructor RGB(red: int, green: int, blue: int) {
    this.r = red
    this.g = green
    this.b = blue
  }
  constructor Hex(hex: string) {
    this.r = 255
    this.g = 255
    this.b = 255
  }
  overload constructor { RGB, Hex }
}

function main(): void {
  let c1: Color = new Color(255, 0, 0)
  if (c1.r != 255) {
    throw new Error("assertion failed: c1.r should be 255")
  }
  if (c1.g != 0) {
    throw new Error("assertion failed: c1.g should be 0")
  }
  if (c1.b != 0) {
    throw new Error("assertion failed: c1.b should be 0")
  }

  let c2: Color = new Color("#FFFFFF")
  if (c2.r != 255) {
    throw new Error("assertion failed: c2.r should be 255")
  }
  if (c2.g != 255) {
    throw new Error("assertion failed: c2.g should be 255")
  }
  if (c2.b != 255) {
    throw new Error("assertion failed: c2.b should be 255")
  }

  console.log("verified")
}
