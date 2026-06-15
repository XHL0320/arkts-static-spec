/**
 * @id LEX_02_05_002_PASS_IDENTIFIER_WITH_DIGITS
 * @expect compile-pass
 * @section 2.5
 * @design Identifiers Token: 含数字的标识符（数字不可在首位）
 * @note 正向用例：如 var1, item2, x123 等
 */
function testIdentifierWithDigits(): void {
  let var1: int = 1
  let item2: int = 2
  let x123: int = 3
}
