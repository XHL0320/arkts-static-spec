/**
 * @id LEX_02_04_028_RT_CONSECUTIVE_EMPTY_LINES
 * @expect runtime
 * @section 2.4
 * @design 多个连续 LF 视为单一分隔符，不影响语句执行顺序
 * @note 运行时用例：验证连续空行后语句仍按顺序执行
 */
function main(): void {
  let x: int = 1







  x = x + 5




  x = x * 2
  if (x !== 12) { throw new Error("expected 12, got " + x.toString()) }
}
