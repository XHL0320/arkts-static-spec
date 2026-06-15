/**
 * @id LEX_02_06_009_PASS_UESCAPE_BRACE_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: \u{HHHH...} 扩展转义起始
 * @note 正向用例：\u{41} 等价于 A
 */
function testUEscapeBraceStart(): void {
  let \u{41}: int = 1
  let \u{0042}val: int = 2
  let \u{4E2D}: int = 3
}
