/**
 * @id LEX_02_05_009_PASS_OP_ARITHMETIC
 * @expect compile-pass
 * @section 2.5
 * @design Operators Token: 算术运算符 + - * / %
 * @note 正向用例：算术运算符作为 Token
 */
function testOpArithmetic(): void {
  let a: int = 10 + 3
  let b: int = 10 - 3
  let c: int = 10 * 3
  let d: int = 10 / 3
  let e: int = 10 % 3
}
