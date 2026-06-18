/**
 * @id STM_08_05_009_FAIL_missing_parentheses
 * @expect compile-fail
 * @section 8.5
 * @design if 语句缺少括号应产生语法错误 — STATEMENTS.md 要求 'if' '(' expression ')'
 * @note 反向用例：if 后直接跟 true 缺少括号 → Syntax error ESY0230 Expected '('
 */
function testMissingParens(): void {
  if true { let x: int = 1 }
}
