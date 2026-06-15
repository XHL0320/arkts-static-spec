/**
 * @id LEX_02_04_026_RT_MULTILINE_COMMENT_NO_EFFECT
 * @expect runtime
 * @section 2.4
 * @design 多行注释跨行不影响后续语句执行
 * @note 运行时用例：多行注释含真实行终止符
 */
function main(): void {
  /*
   * this comment
   * spans multiple
   * lines
   */
  let x: int = 42
  if (x !== 42) { throw new Error("x !== 42") }
}
