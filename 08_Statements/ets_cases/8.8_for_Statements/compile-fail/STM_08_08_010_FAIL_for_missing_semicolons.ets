/**
 * @id STM_08_08_010_FAIL_for_missing_semicolons
 * @expect compile-fail
 * @section 8.8
 * @design for 循环缺少分号应产生语法错误 — STATEMENTS.md: 'for' '(' forInit? ';' forContinue? ';' forUpdate? ')'
 * @note 反向用例：for 括号内缺少分号 → Syntax error
 */
function testForMissingSemicolons(): void {
  for (let i: int = 0 i < 10 i++) { break }
}
