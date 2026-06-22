/**
 * @id CON_06_04_01_010_PASS_WIDENING_WITH_ARITHMETIC
 * @expect compile-pass
 * @section 6.4.1
 * @design Widening 配合算术运算: 混合类型运算中的 widening
 * @note 正向用例：验证数值运算中的 widening
 */
function testWideningWithArithmetic(): void {
  let b: byte = 10
  let i: int = 5
  let r1: int = b + i

  let r2: long = b + 100
  let r3: double = i * 2.5
}
