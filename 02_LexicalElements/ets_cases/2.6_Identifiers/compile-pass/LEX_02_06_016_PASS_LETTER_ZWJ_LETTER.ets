/**
 * @id LEX_02_06_016_PASS_LETTER_ZWJ_LETTER
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: Letter + ZWJ + Letter 组合
 * @note 正向用例：a + ZWJ + b 与 a + ZWNJ + b 是不同标识符
 */
function testLetterZwjLetter(): void {
  let a‍b: int = 1
  let a‌b: int = 2
}
