/**
 * @id LEX_02_05_023_PASS_LONGEST_MATCH_ARROW
 * @expect compile-pass
 * @section 2.5
 * @design 最长匹配: => 识别为单一 Token (箭头函数)
 * @note 正向用例：箭头函数运算符
 */
function testLongestMatchArrow(): void {
  let f: (x: int) => int = (x: int): int => x + 1
  let r: int = f(10)
}
