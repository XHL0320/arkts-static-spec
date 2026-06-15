/**
 * @id LEX_02_06_036_RT_UNICODE_VALUE
 * @expect runtime
 * @section 2.6
 * @design 运行时验证 Unicode 标识符值访问正确
 * @note 运行时用例：中文/日文标识符运行时
 */
function main(): void {
  let 计数器: int = 0
  let カウンタ: int = 10
  计数器 = 计数器 + 5
  カウンタ = カウンタ + 计数器
  if (计数器 !== 5) { throw new Error("counter !== 5") }
  if (カウンタ !== 15) { throw new Error("counter jp !== 15") }
}
