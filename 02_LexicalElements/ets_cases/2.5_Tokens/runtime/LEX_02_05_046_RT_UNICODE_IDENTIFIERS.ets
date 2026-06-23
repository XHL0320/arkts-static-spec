/**
 * @id LEX_02_05_046_RT_UNICODE_IDENTIFIERS
 * @expect runtime
 * @section 2.5
 * @design Unicode 标识符运行时验证
 * @note runtime 用例：验证 Unicode 标识符的运行时行为
 */

function main(): void {
  // Unicode 标识符
  let 变量1 = 100
  if (变量1 !== 100) { throw new Error("变量1 failed, got " + 变量1) }

  let 名字 = "Alice"
  if (名字 !== "Alice") { throw new Error("名字 failed, got " + 名字) }

  let π = 3.14
  if (π < 3.13 || π > 3.15) { throw new Error("π failed, got " + π) }
}
