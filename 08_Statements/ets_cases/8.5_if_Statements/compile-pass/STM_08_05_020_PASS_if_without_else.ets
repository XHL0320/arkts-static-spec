/**
 * @id STM_08_05_020_PASS_if_without_else
 * @expect compile-pass
 * @section 8.5
 * @design if 语句不带 else 分支 — STATEMENTS.md 允许单独的 if-then
 * @note 正向用例：if 不带 else 分支，条件为 false 时跳过 thenStatement
 */
function testIfWithoutElse(): void {
  let x: int = 0
  if (true) { x = 1 }
  if (false) { x = 99 }
}
