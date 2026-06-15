/**
 * @id LEX_02_05_012_PASS_OP_ASSIGNMENT
 * @expect compile-pass
 * @section 2.5
 * @design Operators Token: 赋值运算符 = += -= *= /= %=
 * @note 正向用例：赋值运算符作为 Token
 */
function testOpAssignment(): void {
  let x: int = 10
  x = 20
  x += 5
  x -= 3
  x *= 2
  x /= 4
  x %= 3
}
