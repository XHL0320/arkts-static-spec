/**
 * @id LEX_02_09_02_026_RT_ZERO_BASES
 * @expect runtime
 * @section 2.9.2
 * @design 零的不同进制表示运行时验证
 * @note runtime 用例：验证零的不同进制表示的运行时行为
 */

function main(): void {
  // 零的不同进制表示
  let x1 = 0
  let x2 = 0x0
  let x3 = 0o0
  let x4 = 0b0

  // 验证它们都等于 0
  if (x1 !== 0) { throw new Error("0 failed, got " + x1) }
  if (x2 !== 0) { throw new Error("0x0 failed, got " + x2) }
  if (x3 !== 0) { throw new Error("0o0 failed, got " + x3) }
  if (x4 !== 0) { throw new Error("0b0 failed, got " + x4) }

  // 验证它们相等
  if (x1 !== x2) { throw new Error("0 !== 0x0") }
  if (x2 !== x3) { throw new Error("0x0 !== 0o0") }
  if (x3 !== x4) { throw new Error("0o0 !== 0b0") }
}
