/**
 * @id LEX_02_07_043_PASS_SOFT_KW_OF_IDENT
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字 of 在非 for-of 上下文可作标识符
 * @note 正向用例：of 作变量名
 */
function test043(): void {
  let of: int = 1
  let ofValue: string = "x"
}
