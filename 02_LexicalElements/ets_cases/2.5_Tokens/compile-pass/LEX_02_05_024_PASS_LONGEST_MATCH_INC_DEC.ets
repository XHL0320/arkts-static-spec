/**
 * @id LEX_02_05_024_PASS_LONGEST_MATCH_INC_DEC
 * @expect compile-pass
 * @section 2.5
 * @design 最长匹配: ++ / -- 识别为单一 Token
 * @note 正向用例：自增/自减运算符
 */
function testLongestMatchIncDec(): void {
  let x: int = 5
  x++
  x--
  ++x
  --x
}
