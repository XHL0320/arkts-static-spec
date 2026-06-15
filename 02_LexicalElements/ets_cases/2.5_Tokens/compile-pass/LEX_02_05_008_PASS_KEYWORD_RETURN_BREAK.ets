/**
 * @id LEX_02_05_008_PASS_KEYWORD_RETURN_BREAK
 * @expect compile-pass
 * @section 2.5
 * @design Keywords Token: return/break/continue 关键字
 * @note 正向用例：跳转关键字作为 Token
 */
function getValue(): int {
  return 42
}

function testKeywordReturnBreak(): void {
  let sum: int = 0
  for (let i: int = 0; i < 10; i = i + 1) {
    if (i === 5) {
      break
    }
    if (i % 2 === 0) {
      continue
    }
    sum = sum + i
  }
  let v: int = getValue()
}
