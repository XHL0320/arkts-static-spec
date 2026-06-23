/**
 * @id EXP_07_23_03_001_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.23.3
 * @design 验证 byte/byte→int、short/short→int 隐式类型提升取余。
 *         byte 和 short 在算术运算中自动提升到 int。
 *         spec：byte/short/int 操作数取余结果为 int 类型。
 * @note 正向用例：验证取余运算符中 byte/short 自动提升到 int
 */
function main(): void {
  let a: byte = 7
  let b: byte = 3
  let c: short = 20
  let d: short = 6

  // byte % byte → int
  let r1 = a % b
  let r1Type = typeof(r1)
  if (r1Type != "int") {
    throw new Error("byte%byte should be int, got " + r1Type)
  }

  // short % short → int
  let r2 = c % d
  let r2Type = typeof(r2)
  if (r2Type != "int") {
    throw new Error("short%short should be int, got " + r2Type)
  }

  // byte % short → int
  let r3 = a % c
  let r3Type = typeof(r3)
  if (r3Type != "int") {
    throw new Error("byte%short should be int, got " + r3Type)
  }

  console.log("verified")
}
main()
