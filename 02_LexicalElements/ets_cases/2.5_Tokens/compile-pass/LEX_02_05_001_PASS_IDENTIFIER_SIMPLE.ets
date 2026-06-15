/**
 * @id LEX_02_05_001_PASS_IDENTIFIER_SIMPLE
 * @expect compile-pass
 * @section 2.5
 * @design Identifiers Token: 简单字母标识符
 * @note 正向用例：标识符作为 Token 的基础形式
 */
function testIdentifierSimple(): void {
  let abc: int = 1
  let foo: int = 2
  let bar: int = abc + foo
}
