/**
 * @id LEX_02_07_078_PASS_SOFT_KW_CATCH_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 补充测试因子：软关键字 catch 在普通上下文可作为标识符
 * @note 正向用例：补齐软关键字普通标识符上下文覆盖
 */
function test78(): void {
  let catch: int = 1
  let result: int = catch + 1
}
