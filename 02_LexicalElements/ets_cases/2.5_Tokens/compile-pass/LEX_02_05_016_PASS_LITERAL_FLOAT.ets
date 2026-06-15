/**
 * @id LEX_02_05_016_PASS_LITERAL_FLOAT
 * @expect compile-pass
 * @section 2.5
 * @design Literals Token: 浮点字面量
 * @note 正向用例：浮点字面量作为 Token
 */
function testLiteralFloat(): void {
  let pi: double = 3.14
  let e: double = 2.71
  let big: double = 1e10
  let small: double = 1.5e-5
  let f: float = 3.14f
}
