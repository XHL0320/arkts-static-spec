/**
 * @id CON_06_04_01_008_PASS_WIDENING_IN_ASSIGNMENT
 * @expect compile-pass
 * @section 6.4.1
 * @design Widening 在赋值上下文中: 变量赋值时的 widening
 * @note 正向用例：验证赋值语句的 widening
 */
function testWideningInAssignment(): void {
  let b: byte = 10
  let l: long = 0
  l = b

  let i: int = 20
  l = i

  let d: double = 0.0
  d = i
}
