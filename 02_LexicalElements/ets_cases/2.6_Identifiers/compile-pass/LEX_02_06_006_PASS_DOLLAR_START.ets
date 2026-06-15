/**
 * @id LEX_02_06_006_PASS_DOLLAR_START
 * @expect compile-pass
 * @section 2.6
 * @design IdentifierStart: $ 字符
 * @note 正向用例：$ 作为标识符首字符
 */
function testDollarStart(): void {
  let $x: int = 1
  let $foo: int = 2
  let $: int = 3
  let $$: int = 4
}
