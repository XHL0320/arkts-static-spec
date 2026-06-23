/**
 * @id EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.26
 * @design 验证byte和short类型作为移位操作左操作数时，自动提升为int类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftByteShortPromotion(): void {
  let b: byte = 8
  let s: short = 4
  let shift: int = 1

  // byte左操作数提升为int，结果类型为int
  let r1: int = b << shift   // 8 << 1 = 16
  let r2: int = b >> shift   // 8 >> 1 = 4
  let r3: int = b >>> shift  // 8 >>> 1 = 4

  // short左操作数提升为int，结果类型为int
  let r4: int = s << shift   // 4 << 1 = 8
  let r5: int = s >> shift   // 4 >> 1 = 2
  let r6: int = s >>> shift  // 4 >>> 1 = 2

  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString())
}
