/**
 * @id LEX_02_05_006_PASS_KEYWORD_CONTROL_FLOW
 * @expect compile-pass
 * @section 2.5
 * @design Keywords Token: if/else/while/for 流程控制关键字
 * @note 正向用例：流程控制关键字作为 Token
 */
function testKeywordControlFlow(): void {
  let x: int = 1
  if (x > 0) {
    x = x + 1
  } else {
    x = x - 1
  }
  while (x < 10) {
    x = x + 1
  }
  for (let i: int = 0; i < 3; i = i + 1) {
    x = x + i
  }
}
