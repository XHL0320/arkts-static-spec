/**
 * @id LEX_02_03_046_PASS_OGHAM_SPACE_MARK
 * @expect compile-pass
 * @section 2.3
 * @design Ogham Space Mark (U+1680) 作为词法分隔符
 * @note 正向用例：Ogham Space Mark 属于 spec 列出的空白符，验证其作为分隔符可用
 */
function testOghamSpaceMark(): void {
  let a: int = 1
  let b: int = 2
  let c: int = a + b
}
