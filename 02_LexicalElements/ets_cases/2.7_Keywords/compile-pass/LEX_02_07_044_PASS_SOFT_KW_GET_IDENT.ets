/**
 * @id LEX_02_07_044_PASS_SOFT_KW_GET_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字 get 在非访问器上下文可作标识符
 * @note 正向用例：get 作变量名
 */
function test044(): void {
  let get: int = 1
  let getValue: string = "x"
}
