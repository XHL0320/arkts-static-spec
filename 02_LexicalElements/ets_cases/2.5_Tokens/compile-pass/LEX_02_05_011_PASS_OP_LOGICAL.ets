/**
 * @id LEX_02_05_011_PASS_OP_LOGICAL
 * @expect compile-pass
 * @section 2.5
 * @design Operators Token: 逻辑运算符 && || !
 * @note 正向用例：逻辑运算符作为 Token
 */
function testOpLogical(): void {
  let a: boolean = true
  let b: boolean = false
  let r1: boolean = a && b
  let r2: boolean = a || b
  let r3: boolean = !a
}
