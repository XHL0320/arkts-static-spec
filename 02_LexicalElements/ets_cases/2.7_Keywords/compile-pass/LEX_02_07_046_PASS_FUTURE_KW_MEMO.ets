/**
 * @id LEX_02_07_046_PASS_FUTURE_KW_MEMO
 * @expect compile-pass
 * @section 2.7
 * @design 未来保留软关键字: memo 当前可作普通标识符
 * @note 正向用例：memo 作变量名
 */
function test046(): void {
  let memo: string = ""
  let memoCache: int = 0
}
