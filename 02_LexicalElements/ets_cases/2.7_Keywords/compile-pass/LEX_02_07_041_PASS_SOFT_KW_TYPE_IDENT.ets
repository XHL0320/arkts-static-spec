/**
 * @id LEX_02_07_041_PASS_SOFT_KW_TYPE_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字 type 在非 type-alias 上下文可作标识符
 * @note 正向用例：type 作变量名
 */
function test041(): void {
  let type: int = 1
  let typeValue: string = "x"
}
