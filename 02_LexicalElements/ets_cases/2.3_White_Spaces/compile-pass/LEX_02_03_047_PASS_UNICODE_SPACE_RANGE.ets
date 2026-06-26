/**
 * @id LEX_02_03_047_PASS_UNICODE_SPACE_RANGE
 * @expect compile-pass
 * @section 2.3
 * @design U+2000–U+200A 区段空白字符作为词法分隔符
 * @note 正向用例：该区段各空白字符在 spec 中列为空白符，验证其作为分隔符可用
 */
function testUnicodeSpaceRange(): void {
  let a: int = 1  // U+2002 En Space + U+2003 Em Space
  let b: int = 2  // U+2009 Thin Space + U+200A Hair Space
  let c: int = 3  // U+2000 En Quad
}
