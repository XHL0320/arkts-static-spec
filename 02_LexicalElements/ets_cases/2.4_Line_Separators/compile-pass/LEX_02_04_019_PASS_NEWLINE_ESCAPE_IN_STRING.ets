/**
 * @id LEX_02_04_019_PASS_NEWLINE_ESCAPE_IN_STRING
 * @expect compile-pass
 * @section 2.4
 * @design 普通字符串内允许 \n 转义序列（不是真实换行）
 * @note 正向用例：转义序列 \n 不是行终止符
 */
function testNewlineEscapeInString(): void {
  let s1: string = "line1\nline2"
  let s2: string = 'tab\tand\nnewline'
}
