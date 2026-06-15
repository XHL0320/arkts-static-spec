/**
 * @id LEX_02_05_004_PASS_IDENTIFIER_UNDERSCORE
 * @expect compile-pass
 * @section 2.5
 * @design Identifiers Token: 含 _ 的标识符
 * @note 正向用例：_ 可作为标识符首字符或任意位置
 */
function testIdentifierUnderscore(): void {
  let _value: int = 1
  let foo_bar: int = 2
  let __init__: int = 3
}
