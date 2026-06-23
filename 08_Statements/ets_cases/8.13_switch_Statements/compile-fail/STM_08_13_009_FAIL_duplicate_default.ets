/**
 * @id STM_08_13_009_FAIL_duplicate_default
 * @expect compile-fail
 * @section 8.13
 * @design switch 语句中多个 default 子句应产生编译错误 — STATEMENTS.md 只允许一个 defaultClause
 * @note 反向用例：两个 default 子句 → Syntax error ESY0171 Multiple default clauses
 */
function testDuplicateDefault(): void {
  switch (1) {
    case 1:
      break;
    default:
      break;
    default:
      break;
  }
}
