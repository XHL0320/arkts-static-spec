/**
 * @id LEX_02_05_010_PASS_OP_COMPARISON
 * @expect compile-pass
 * @section 2.5
 * @design Operators Token: 比较运算符 == != < > <= >=
 * @note 正向用例：比较运算符作为 Token
 */
function testOpComparison(): void {
  let a: int = 5
  let b: int = 10
  let r1: boolean = a == b
  let r2: boolean = a != b
  let r3: boolean = a < b
  let r4: boolean = a > b
  let r5: boolean = a <= b
  let r6: boolean = a >= b
}
