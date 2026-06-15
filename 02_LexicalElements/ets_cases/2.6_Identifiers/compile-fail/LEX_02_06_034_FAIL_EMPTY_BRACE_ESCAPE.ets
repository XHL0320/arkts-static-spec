/**
 * @id LEX_02_06_034_FAIL_EMPTY_BRACE_ESCAPE
 * @expect compile-fail
 * @section 2.6
 * @design 标识符空 \u{} 转义应失败
 * @note 反向用例：\u{} 不指定码点
 */
function testEmptyBraceEscape(): void {
  let \u{}name: int = 1
}
