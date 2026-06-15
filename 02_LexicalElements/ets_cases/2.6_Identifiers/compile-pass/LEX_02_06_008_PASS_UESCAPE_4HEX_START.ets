/**
 * @id LEX_02_06_008_PASS_UESCAPE_4HEX_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: \uHHHH 转义序列起始
 * @note 正向用例：\u0041 等价于 A
 */
function testUEscape4HexStart(): void {
  let \u0041: int = 1
  let \u0042VAL: int = 2
  let \u4E2D: int = 3
}
