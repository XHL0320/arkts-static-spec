/**
 * @id LEX_02_06_010_PASS_DIGIT_IN_PART
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: Nd (Decimal Digit) 字符
 * @note 正向用例：标识符中可含数字（非首字符）
 */
function testDigitInPart(): void {
  let v0: int = 0
  let v9: int = 9
  let var123: int = 123
  let item9999: int = 9999
}
