/**
 * @id LEX_02_06_002_PASS_LL_LETTER_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: Ll (Lowercase Letter) - a, b, z 等小写英文字母
 * @note 正向用例：UnicodeIDStart 的 Ll 类别
 */
function testLlStart(): void {
  let a: int = 1
  let b: int = 2
  let z: int = 3
  let myName: int = 100
}
