/**
 * @id LEX_02_09_02_022_RT_TYPE_CONVERSION
 * @expect runtime
 * @section 2.9.2
 * @design 类型转换验证
 * @note runtime 用例：验证 int/long 类型转换
 */

function main(): void {
  // 验证 int 到 long 的隐式转换（widening）
  let x1: int = 42
  let x2: long = x1
  if (x2 !== 42) { throw new Error("int to long conversion failed, got " + x2) }

  // 验证 long 到 int 的显式转换（使用 Long.toInt()）
  let x3: long = 42
  let x4: int = Long.toInt(x3)
  if (x4 !== 42) { throw new Error("long to int conversion failed, got " + x4) }

  // 验证 long 到 int 转换溢出
  let x5: long = 2147483648  // max(int) + 1
  let x6: int = Long.toInt(x5)
  // 溢出行为：2147483648 -> -2147483648
  if (x6 !== -2147483648) { throw new Error("long to int overflow failed, got " + x6) }
}
