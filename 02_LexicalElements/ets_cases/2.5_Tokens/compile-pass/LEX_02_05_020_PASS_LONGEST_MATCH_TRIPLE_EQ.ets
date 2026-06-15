/**
 * @id LEX_02_05_020_PASS_LONGEST_MATCH_TRIPLE_EQ
 * @expect compile-pass
 * @section 2.5
 * @design 最长匹配: === 识别为单一 Token，不是 == + =
 * @note 正向用例：tokenizer 优先识别最长 Token
 */
function testLongestMatchTripleEq(): void {
  let a: int = 5
  let b: int = 5
  let r: boolean = a === b
}
