/**
 * @id LEX_02_06_013_PASS_UESCAPE_IN_PART
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: \uHHHH 转义在标识符中部
 * @note 正向用例：a\u0042c 等价于 aBc
 */
function testUEscapeInPart(): void {
  let a\u0042c: int = 1
  let foo\u4E2D: int = 2
}
