/**
 * @id LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL
 * @expect compile-pass
 * @section 2.4
 * @design 编译器实测：char 字面量 c'...' 内含真实 LF 字符编译通过（与 spec 严格性预期不一致）
 * @note 实测行为：当前 es2panda 接受 char 字面量内的真实换行，这是潜在的设计问题（详见 design_issues_report_2.4.md 问题 A）
 */
function testLfInCharLiteral(): void {
  let ch: char = c'
'
}
