/**
 * @id EXP_07_02_01_011_PASS_EXPRESSION_STATEMENT
 * @expect compile-pass
 * @section 7.2.1
 * @design 函数调用作为独立表达式语句（standalone）
 * @note 正向用例：验证 standalone 表达式语句（函数调用）
 */
function sideEffect(): int {
  return 42
}

function testExpressionStatement(): void {
  sideEffect()
}
