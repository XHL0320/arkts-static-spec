/**
 * @id LEX_02_07_079_PASS_SOFT_KW_FINALLY_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 补充测试因子：软关键字 finally 在普通上下文可作为标识符
 * @note 正向用例：补齐软关键字普通标识符上下文覆盖
 */
function test79(): void {
  let finally: int = 1
  let result: int = finally + 1
}
