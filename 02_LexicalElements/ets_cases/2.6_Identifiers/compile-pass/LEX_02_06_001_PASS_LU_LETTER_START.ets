/**
 * @id LEX_02_06_001_PASS_LU_LETTER_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: Lu (Uppercase Letter) - A, B, Z 等大写英文字母
 * @note 正向用例：UnicodeIDStart 的 Lu 类别
 */
function testLuStart(): void {
  let A: int = 1
  let B: int = 2
  let Z: int = 3
  let MyName: int = 100
}
