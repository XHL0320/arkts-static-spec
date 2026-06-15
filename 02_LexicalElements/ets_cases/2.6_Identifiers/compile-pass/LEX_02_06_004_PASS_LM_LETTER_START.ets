/**
 * @id LEX_02_06_004_PASS_LM_LETTER_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: Lm (Modifier Letter) - 如 ʰ (modifier letter small h)
 * @note 正向用例：UnicodeIDStart 的 Lm 类别
 */
function testLmStart(): void {
  let ʰa: int = 1
  let ʱb: int = 2
}
