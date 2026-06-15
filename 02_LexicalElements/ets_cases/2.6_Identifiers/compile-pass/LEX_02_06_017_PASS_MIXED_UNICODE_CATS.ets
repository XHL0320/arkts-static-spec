/**
 * @id LEX_02_06_017_PASS_MIXED_UNICODE_CATS
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierPart: 混合 Unicode 类别（Lu + Ll + Lo + Nd）
 * @note 正向用例：MyName中文123
 */
function testMixedUnicodeCats(): void {
  let MyName中文123: int = 1
  let Àbc中: int = 2
}
