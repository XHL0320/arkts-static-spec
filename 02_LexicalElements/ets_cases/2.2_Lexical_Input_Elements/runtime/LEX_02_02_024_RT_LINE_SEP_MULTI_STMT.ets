/**
 * @id LEX_02_02_024_RT_LINE_SEP_MULTI_STMT
 * @expect runtime
 * @section 2.2
 * @design 换行分隔的多语句按顺序执行 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let x: int = 1
  x = x + 1
  x = x * 3
  if (x !== 6) { throw new Error("x !== 6") }
}
