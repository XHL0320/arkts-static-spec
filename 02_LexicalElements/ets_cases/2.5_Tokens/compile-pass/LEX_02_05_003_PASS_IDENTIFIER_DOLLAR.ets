/**
 * @id LEX_02_05_003_PASS_IDENTIFIER_DOLLAR
 * @expect compile-pass
 * @section 2.5
 * @design Identifiers Token: 含 $ 的标识符
 * @note 正向用例：$ 可作为标识符首字符或任意位置
 */
function testIdentifierDollar(): void {
  let $value: int = 1
  let foo$bar: int = 2
  let $: int = 3
}
