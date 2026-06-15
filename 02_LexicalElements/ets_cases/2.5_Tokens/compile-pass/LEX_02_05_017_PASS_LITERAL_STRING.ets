/**
 * @id LEX_02_05_017_PASS_LITERAL_STRING
 * @expect compile-pass
 * @section 2.5
 * @design Literals Token: 字符串字面量（单引号/双引号/模板）
 * @note 正向用例：字符串字面量作为 Token
 */
function testLiteralString(): void {
  let s1: string = "double quotes"
  let s2: string = 'single quotes'
  let s3: string = `template literal`
}
