/**
 * @id LEX_02_06_007_PASS_UNDERSCORE_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: _ 字符
 * @note 正向用例：_ 作为标识符首字符
 */
function testUnderscoreStart(): void {
  let _x: int = 1
  let _foo: int = 2
  let _: int = 3
  let __init__: int = 4
}
