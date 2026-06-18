/**
 * @id STM_08_07_009_FAIL_while_missing_parentheses
 * @expect compile-fail
 * @section 8.7
 * @design while 语句缺少括号应产生语法错误 — STATEMENTS.md 要求 'while' '(' expression ')'
 * @note 反向用例：while 后直接跟 true 缺少括号 → Syntax error ESY0230 Expected '('
 */
function testWhileMissingParens(): void {
  while true { break }
}
