/**
 * @id CON_06_04_001_PASS_WIDENING_IN_DECLARATION
 * @expect compile-pass
 * @section 6.4
 * @design Widening Numeric Conversion 在声明上下文中：int→number, int→long, byte→int
 * @note 正向用例：验证 widening 在赋值上下文中隐式生效
 */
function testWideningInDeclaration(): void {
  let a: int = 42
  let b: number = a
  let c: long = a
  let d: int = a

  let e: byte = 10
  let f: short = e
  let g: int = e
  let h: long = e
}
