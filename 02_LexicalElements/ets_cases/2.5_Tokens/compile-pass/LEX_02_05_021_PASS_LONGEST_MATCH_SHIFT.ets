/**
 * @id LEX_02_05_021_PASS_LONGEST_MATCH_SHIFT
 * @expect compile-pass
 * @section 2.5
 * @design 最长匹配: >>> 识别为单一 Token，不是 >> + >
 * @note 正向用例：无符号右移作为单一 Token
 */
function testLongestMatchShift(): void {
  let a: int = 16
  let r1: int = a >> 1
  let r2: int = a >>> 1
}
