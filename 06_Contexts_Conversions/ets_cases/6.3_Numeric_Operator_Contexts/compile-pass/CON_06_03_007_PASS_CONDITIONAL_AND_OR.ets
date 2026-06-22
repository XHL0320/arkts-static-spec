/**
 * @id CON_06_03_007_PASS_CONDITIONAL_AND_OR
 * @expect compile-pass
 * @section 6.3
 * @design 条件与/条件或: boolean && boolean / boolean || boolean
 * @note 正向用例：验证 && 和 || 在数值上下文编译通过
 */
function testConditionalAndOr(): void {
  let a: int = 10
  let b: int = 20
  let r1: boolean = a < b && b > 0
  let r2: boolean = a > b || b < 30

  let x: boolean = true
  let y: boolean = false
  let r3: boolean = x && y
  let r4: boolean = x || y
}
