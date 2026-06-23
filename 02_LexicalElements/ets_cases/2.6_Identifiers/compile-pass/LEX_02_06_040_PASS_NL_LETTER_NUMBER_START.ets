/**
 * @id LEX_02_06_040_PASS_NL_LETTER_NUMBER_START
 * @expect compile-pass
 * @section 2.6
 * @design 补充测试因子：Unicode Nl(Letter Number) 如罗马数字 U+2160 可作为 IdentifierStart（实现实测支持）
 * @note 正向用例：补齐 checklist 对 Unicode 类别边界的覆盖
 */
function testNlStart(): void {
  let Ⅰvar: int = 1
  let Ⅱvar: int = 2
}
