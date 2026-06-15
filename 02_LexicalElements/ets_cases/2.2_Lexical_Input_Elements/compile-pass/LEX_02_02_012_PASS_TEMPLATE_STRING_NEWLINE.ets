/**
 * @id LEX_02_02_012_PASS_TEMPLATE_STRING_NEWLINE
 * @expect compile-pass
 * @section 2.2
 * @design 模板字符串内允许换行作为内容 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testTemplateStringNewline(): void {
  let s: string = `line1
line2
line3`
}
