/**
 * @id STM_08_05_010_FAIL_empty_condition
 * @expect compile-fail
 * @section 8.5
 * @design if 条件表达式不能为空 — STATEMENTS.md 要求 '(' expression ')'
 * @note 反向用例：if 括号内为空 → Syntax error ESY0227 Unexpected token ')'
 */
function testEmptyCondition(): void {
  if () { let x: int = 1 }
}
