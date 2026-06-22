/**
 * @id CON_06_03_020_RUNTIME_ADDITIVE_WIDENING
 * @expect runtime
 * @section 6.3
 * @design 加法/减法 widening 运行时行为: int+long, int+double, long-int
 * @note 运行时用例：实际执行验证 widening 加法/减法结果
 */
function main(): void {
  let a: int = 10
  let b: long = 20
  let r1: long = a + b
  if (r1 != 30) {
    throw new Error("assertion failed: 10 + 20 should be 30, got " + r1)
  }

  let r2: long = b - a
  if (r2 != 10) {
    throw new Error("assertion failed: 20 - 10 should be 10")
  }

  let c: int = 5
  let d: double = 2.5
  let r3: double = c + d
  if (r3 != 7.5) {
    throw new Error("assertion failed: 5 + 2.5 should be 7.5, got " + r3)
  }

  let e: byte = 10
  let f: int = 5
  let r4: int = e + f
  if (r4 != 15) {
    throw new Error("assertion failed: 10 + 5 should be 15")
  }

  console.log("Additive widening verified")
}
