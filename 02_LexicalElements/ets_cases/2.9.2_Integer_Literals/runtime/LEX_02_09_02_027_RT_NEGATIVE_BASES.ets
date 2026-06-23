/**
 * @id LEX_02_09_02_027_RT_NEGATIVE_BASES
 * @expect runtime
 * @section 2.9.2
 * @design 负数进制表示运行时验证
 * @note runtime 用例：验证负数的不同进制表示的运行时行为
 */

function main(): void {
  // 负数的不同进制表示
  let x1 = -42
  let x2 = -0xFF
  let x3 = -0o77
  let x4 = -0b1010

  // 验证值正确
  if (x1 !== -42) { throw new Error("-42 failed, got " + x1) }
  if (x2 !== -255) { throw new Error("-0xFF failed, got " + x2) }
  if (x3 !== -63) { throw new Error("-0o77 failed, got " + x3) }
  if (x4 !== -10) { throw new Error("-0b1010 failed, got " + x4) }

  // 验证负数运算
  let sum = x1 + x2 + x3 + x4
  if (sum !== -370) { throw new Error("sum failed, got " + sum) }
}
