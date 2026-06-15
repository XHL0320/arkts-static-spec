/**
 * @id LEX_02_06_014_PASS_UESCAPE_BRACE_IN_PART
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: \u{HHHH...} 扩展转义在标识符中部
 * @note 正向用例：a\u{42}c 等价于 aBc
 */
function testUEscapeBraceInPart(): void {
  let a\u{42}c: int = 1
  let foo\u{4E2D}: int = 2
}
