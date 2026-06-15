/**
 * @id LEX_02_05_018_PASS_LITERAL_BOOLEAN
 * @expect compile-pass
 * @section 2.5
 * @design Literals Token: 布尔字面量 true / false
 * @note 正向用例：布尔字面量作为 Token
 */
function testLiteralBoolean(): void {
  let t: boolean = true
  let f: boolean = false
  let r: boolean = t && !f
}
