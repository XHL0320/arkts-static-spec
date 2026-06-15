/**
 * @id LEX_02_07_051_PASS_CASE_LET
 * @expect compile-pass
 * @section 2.7
 * @design 大小写敏感: LET 不是关键字 let
 * @note 正向用例：全大写不是关键字
 */
function test051(): void {
  let LET: int = 1
  let Let: int = 2
}
