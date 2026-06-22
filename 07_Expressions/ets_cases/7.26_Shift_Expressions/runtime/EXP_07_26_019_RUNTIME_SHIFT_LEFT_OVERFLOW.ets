/**
 * @id EXP_07_26_019_RUNTIME_SHIFT_LEFT_OVERFLOW
 * @expect runtime
 * @section 7.26
 * @design 运行时验证左移溢出回绕行为：n << s = n * 2^s，即使溢出也按此规则
 * @note 运行时用例：实际执行验证左移溢出时的回绕效果
 */
function main(): void {
  // int左移溢出：低31位有效，超出后回绕
  let a: int = 0x40000000  // 2^30
  let r1: int = a << 1    // 2^30 << 1 = 2^31 = 0x80000000 = -2147483648
  if (r1 != -2147483648) {
    throw new Error("assertion failed: 0x40000000 << 1 expected -2147483648, got " + r1)
  }

  let r2: int = a << 2    // 2^30 << 2 = 2^32 wraps to 0 in 32-bit
  if (r2 != 0) {
    throw new Error("assertion failed: 0x40000000 << 2 expected 0, got " + r2)
  }

  // 符号位溢出
  let b: int = -2147483648  // 0x80000000 = min int
  let r3: int = b << 1     // 左移1位 = 0，因为最低位补0
  if (r3 != 0) {
    throw new Error("assertion failed: -2147483648 << 1 expected 0, got " + r3)
  }

  // long溢出回绕
  let c: long = 0x4000000000000000  // 2^62
  let r4: long = c << 1            // 2^63 = min long = -9223372036854775808
  if (r4 != -9223372036854775808) {
    throw new Error("assertion failed: 2^62 << 1 expected min long, got " + r4)
  }

  // 继续溢出
  let r5: long = c << 2  // wraps
  if (r5 != 0) {
    throw new Error("assertion failed: 2^62 << 2 expected 0, got " + r5)
  }

  console.log("verified")
}
