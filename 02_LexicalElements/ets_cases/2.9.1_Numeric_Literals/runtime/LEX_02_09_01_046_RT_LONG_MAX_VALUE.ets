/**
 * @id LEX_02_09_01_046_RT_LONG_MAX_VALUE
 * @expect runtime
 * @section 2.9.1
 * @design long 最大值运行时验证
 * @note runtime 用例：验证 long 最大值的运行时行为
 */

function main(): void {
  // long 最大值
  let x1: long = 9223372036854775807
  if (x1 !== 9223372036854775807) { throw new Error("long max failed, got " + x1) }

  // long 最小值
  let x2: long = -9223372036854775808
  if (x2 !== -9223372036854775808) { throw new Error("long min failed, got " + x2) }

  // long 运算
  let x3: long = 9223372036854775800 + 7
  if (x3 !== 9223372036854775807) { throw new Error("long max + 7 failed, got " + x3) }

  // long 溢出
  let x4: long = 9223372036854775807 + 1
  if (x4 !== -9223372036854775808) { throw new Error("long overflow failed, got " + x4) }
}
