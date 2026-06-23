/**
 * @id LEX_02_09_02_029_RT_BOUNDARY_ARITHMETIC
 * @expect runtime
 * @section 2.9.2
 * @design int/long 边界运算运行时验证
 * @note runtime 用例：验证 int/long 边界运算的运行时行为
 */

function main(): void {
  // int 最大值运算
  let x1: int = 2147483647
  let x2: int = x1 + 1
  if (x2 !== -2147483648) { throw new Error("int max + 1 failed, got " + x2) }

  // int 最小值运算
  let x3: int = -2147483648
  let x4: int = x3 - 1
  if (x4 !== 2147483647) { throw new Error("int min - 1 failed, got " + x4) }

  // long 最大值运算
  let x5: long = 9223372036854775807
  let x6: long = x5 + 1
  if (x6 !== -9223372036854775808) { throw new Error("long max + 1 failed, got " + x6) }

  // long 最小值运算
  let x7: long = -9223372036854775808
  let x8: long = x7 - 1
  if (x8 !== 9223372036854775807) { throw new Error("long min - 1 failed, got " + x8) }
}
