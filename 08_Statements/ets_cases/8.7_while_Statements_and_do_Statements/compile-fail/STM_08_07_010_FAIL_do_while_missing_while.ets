/**
 * @id STM_08_07_010_FAIL_do_while_missing_while
 * @expect compile-fail
 * @section 8.7
 * @design do 语句不能缺少 while 关键字 — STATEMENTS.md 要求 'do' statement 'while' '(' expression ')'
 * @note 反向用例：do 块后没有 while → 语法错误
 */
function testDoMissingWhile(): void {
  do {
    let x: int = 1
  }
}
