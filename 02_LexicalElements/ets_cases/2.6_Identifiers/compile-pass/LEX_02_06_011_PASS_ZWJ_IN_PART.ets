/**
 * @id LEX_02_06_011_PASS_ZWJ_IN_PART
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: ZWJ (U+200D) 零宽连接符
 * @note 正向用例：ZWJ 可在标识符中部
 */
function testZwjInPart(): void {
  let a‍b: int = 1
  let foo‍bar: int = 2
}
