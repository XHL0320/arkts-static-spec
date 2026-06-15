/**
 * @id LEX_02_06_005_PASS_LO_LETTER_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: Lo (Other Letter) - 中/日/韩/阿/希字符
 * @note 正向用例：UnicodeIDStart 的 Lo 类别（无大小写区分的语言）
 */
function testLoStart(): void {
  let 中文变量: int = 1
  let ひらがな: int = 2
  let 한글: int = 3
  let سلام: int = 4
  let שלום: int = 5
}
