/**
 * @id LEX_02_06_012_PASS_ZWNJ_IN_PART
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: ZWNJ (U+200C) 零宽非连接符
 * @note 正向用例：ZWNJ 可在标识符中部
 */
function testZwnjInPart(): void {
  let a‌b: int = 1
  let foo‌bar: int = 2
}
