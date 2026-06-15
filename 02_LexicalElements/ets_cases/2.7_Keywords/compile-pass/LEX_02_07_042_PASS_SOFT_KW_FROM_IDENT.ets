/**
 * @id LEX_02_07_042_PASS_SOFT_KW_FROM_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字 from 在非 import 上下文可作标识符
 * @note 正向用例：from 作变量名
 */
function test042(): void {
  let from: int = 1
  let fromIndex: int = 0
}
