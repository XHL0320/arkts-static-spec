/**
 * @id LEX_02_09_02_018_RT_TYPE_INFERENCE
 * @expect runtime
 * @section 2.9.2
 * @design 类型推断验证
 * @note runtime 用例：验证 int/long 类型推断正确性
 */

function main(): void {
  // 验证 int 类型推断
  let x1 = 0
  let x2 = 0x7FFF_FFFF  // max(int)

  // 验证 long 类型推断
  let x3 = 0x8000_0000  // 超出 int 范围
  let x4 = 9223372036854775807  // max(long)

  // 验证边界值
  if (x2 !== 2147483647) { throw new Error("max(int) mismatch") }
  if (x3 !== 2147483648) { throw new Error("long value mismatch") }
}
