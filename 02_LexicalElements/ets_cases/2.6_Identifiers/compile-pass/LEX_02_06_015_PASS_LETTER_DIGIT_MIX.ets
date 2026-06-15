/**
 * @id LEX_02_06_015_PASS_LETTER_DIGIT_MIX
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: Letter + Digit + Letter 任意组合
 * @note 正向用例：a1b、x2y3z 等混合
 */
function testLetterDigitMix(): void {
  let a1b: int = 1
  let x2y3z: int = 2
  let v0_1_2: int = 3
}
