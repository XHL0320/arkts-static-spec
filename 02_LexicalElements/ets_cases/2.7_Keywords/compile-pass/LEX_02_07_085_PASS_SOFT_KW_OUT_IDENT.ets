/**
 * @id LEX_02_07_085_PASS_SOFT_KW_OUT_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 补充测试因子：软关键字 out 在普通上下文可作为标识符
 * @note 正向用例：补齐软关键字普通标识符上下文覆盖
 */
function test85(): void {
  let out: int = 1
  let result: int = out + 1
}
