/**
 * @id EXP_07_01_01_027_RUNTIME_SHIFT_ARITH_MIXED
 * @expect runtime
 * @section 7.1.1
 * @design 移位和算术混合：`1 + 2 << 3 - 1` = 3 << 2 = 12
 * @note 运行时用例：验证加法优先于移位
 */
function main(): void {
  let r1: int = 1 + 2 << 3 - 1
  if (r1 != 12) {
    throw new Error("assertion failed: 1+2<<3-1 != 12, got " + r1)
  }
  let r2: int = 16 >> 2 + 1
  if (r2 != 2) {
    throw new Error("assertion failed: 16>>2+1 != 2, got " + r2)
  }
  let r3: int = 8 >>> 1 + 1
  if (r3 != 2) {
    throw new Error("assertion failed: 8>>>1+1 != 2, got " + r3)
  }
  console.log("verified")
}
