/**
 * @id EXP_07_26_018_RUNTIME_INT_SHIFT_DISTANCE_MASK
 * @expect runtime
 * @section 7.26
 * @design 运行时验证int类型移位距离只使用低5位（掩码0x1f，范围0-31）
 * @note 运行时用例：实际执行验证int移位仅取右操作数低5位作为位移距离
 */
function main(): void {
  let val: int = 1

  // 移位距离32，低5位为0：1 << 32 = 1 << 0 = 1
  let r1: int = val << 32
  if (r1 != 1) {
    throw new Error("assertion failed: 1 << 32 expected 1 (masked to 0), got " + r1)
  }

  // 移位距离33，低5位为1：1 << 33 = 1 << 1 = 2
  let r2: int = val << 33
  if (r2 != 2) {
    throw new Error("assertion failed: 1 << 33 expected 2 (masked to 1), got " + r2)
  }

  // 移位距离0x20 = 32：1 << 0x20 = 1 << 0 = 1 (0x20 & 0x1f = 0)
  let r3: int = val << 0x0020
  if (r3 != 1) {
    throw new Error("assertion failed: 1 << 0x20 expected 1, got " + r3)
  }

  // 移位距离0x21 = 33：1 << 0x21 = 1 << 1 = 2 (0x21 & 0x1f = 1)
  let r4: int = val << 0x0021
  if (r4 != 2) {
    throw new Error("assertion failed: 1 << 0x21 expected 2, got " + r4)
  }

  // 移位距离31（最大有效值）：1 << 31 = -2147483648
  let r5: int = val << 31
  if (r5 != -2147483648) {
    throw new Error("assertion failed: 1 << 31 expected -2147483648, got " + r5)
  }

  // 掩码验证：1 << 0x1f = 1 << 31 = -2147483648
  let r6: int = val << 0x001f
  if (r6 != -2147483648) {
    throw new Error("assertion failed: 1 << 0x1f expected -2147483648, got " + r6)
  }

  console.log("verified")
}
