/**
 * @id EXP_07_23_01_001_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.23.1
 * @design 验证 byte*byte→int、short*short→int 隐式类型提升乘法。
 *         byte 和 short 在算术运算中自动提升到 int。
 * @note 正向用例：验证乘法运算符中 byte/short 自动提升到 int
 */
function main(): void {
  let a: byte = 3
  let b: byte = 2
  let c: short = 10
  let d: short = 20

  // byte * byte → int
  let r1 = a * b
  let r1Type = typeof(r1)
  if (r1Type != "int") {
    throw new Error("byte*byte should be int, got " + r1Type)
  }

  // short * short → int
  let r2 = c * d
  let r2Type = typeof(r2)
  if (r2Type != "int") {
    throw new Error("short*short should be int, got " + r2Type)
  }

  // byte * short → int
  let r3 = a * c
  let r3Type = typeof(r3)
  if (r3Type != "int") {
    throw new Error("byte*short should be int, got " + r3Type)
  }

  console.log("verified")
}
main()
