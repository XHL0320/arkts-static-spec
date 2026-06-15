/**
 * @id LEX_02_04_018_PASS_LINE_SEP_IN_TEMPLATE_STRING
 * @expect compile-pass
 * @section 2.4
 * @design 模板字符串 ` ` 内允许换行作为内容
 * @note 正向用例：模板字符串包含真实换行字符
 */
function testLineSepInTemplateString(): void {
  let s: string = `line1
line2
line3`
}
