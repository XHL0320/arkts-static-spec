/**
 * @id EXP_07_24_001_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.24
 * @design 验证 byte/short 类型在幂运算中提升为 double（number 类型）：byte**byte→number, short**short→number, byte**short→number, short**byte→number
 * @note 正向用例：验证 byte/short 到 double 的隐式提升
 */
function main(): void {
  let a: byte = 2
  let b: byte = 3
  let c: short = 4
  let d: short = 2
  let e: number = a ** b  // byte**byte→number
  let f: number = c ** d  // short**short→number
  let g: number = a ** c  // byte**short→number
  let h: number = c ** b  // short**byte→number
  console.log("verified")
}
