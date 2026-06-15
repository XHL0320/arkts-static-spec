/**
 * @id LEX_02_07_045_PASS_FUTURE_KW_IS
 * @expect compile-pass
 * @section 2.7
 * @design 未来保留软关键字: is 当前可作普通标识符
 * @note 正向用例：is 作变量名
 */
function test045(): void {
  let is: boolean = true
  let isValid: boolean = false
}
