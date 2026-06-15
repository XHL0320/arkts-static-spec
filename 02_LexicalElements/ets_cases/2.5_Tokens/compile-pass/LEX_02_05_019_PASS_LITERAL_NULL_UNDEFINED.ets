/**
 * @id LEX_02_05_019_PASS_LITERAL_NULL_UNDEFINED
 * @expect compile-pass
 * @section 2.5
 * @design Literals Token: null / undefined 字面量
 * @note 正向用例：null/undefined 字面量作为 Token
 */
function testLiteralNullUndefined(): void {
  let n: string | null = null
  let u: string | undefined = undefined
}
