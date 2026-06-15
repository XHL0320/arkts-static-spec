/**
 * @id LEX_02_06_003_PASS_LT_LETTER_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: Lt (Titlecase Letter) - 如 ǅ (ǅ)
 * @note 正向用例：UnicodeIDStart 的 Lt 类别
 */
function testLtStart(): void {
  let ǅx: int = 1
  let ǈy: int = 2
}
