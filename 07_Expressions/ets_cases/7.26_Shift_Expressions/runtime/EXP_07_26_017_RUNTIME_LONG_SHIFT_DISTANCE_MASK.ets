/**
 * @id EXP_07_26_017_RUNTIME_LONG_SHIFT_DISTANCE_MASK
 * @expect runtime
 * @section 7.26
 * @design 运行时验证long类型移位距离只使用低6位（掩码0x3f，范围0-63）
 * @note 运行时用例：实际执行验证long移位仅取右操作数低6位作为位移距离
 */
function main(): void {
  let val: long = 1

  // 移位距离64，低6位为0：1 << 64 = 1 << 0 = 1
  let r1: long = val << 64
  if (r1 != 1) {
    throw new Error("assertion failed: 1 << 64 expected 1 (masked to 0), got " + r1)
  }

  // 移位距离65，低6位为1：1 << 65 = 1 << 1 = 2
  let r2: long = val << 65
  if (r2 != 2) {
    throw new Error("assertion failed: 1 << 65 expected 2 (masked to 1), got " + r2)
  }

  // 移位距离0x40 = 64：1 << 0x40 = 1 << 0 = 1 (0x40 & 0x3f = 0)
  let r3: long = val << 0x0040
  if (r3 != 1) {
    throw new Error("assertion failed: 1 << 0x40 expected 1, got " + r3)
  }

  // 移位距离0x41 = 65：1 << 0x41 = 1 << 1 = 2 (0x41 & 0x3f = 1)
  let r4: long = val << 0x0041
  if (r4 != 2) {
    throw new Error("assertion failed: 1 << 0x41 expected 2, got " + r4)
  }

  // 移位距离63（最大有效值）：1 << 63
  let r5: long = val << 63
  if (r5 != -9223372036854775808) {
    throw new Error("assertion failed: 1 << 63 expected -9223372036854775808, got " + r5)
  }

  console.log("verified")
}
