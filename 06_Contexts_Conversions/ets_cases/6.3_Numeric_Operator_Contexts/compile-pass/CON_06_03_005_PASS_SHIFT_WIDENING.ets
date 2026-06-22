/**
 * @id CON_06_03_005_PASS_SHIFT_WIDENING
 * @expect compile-pass
 * @section 6.3
 * @design 移位运算: int << long / int >> long, widening 后运算
 * @note 正向用例：验证移位运算的 widening 编译通过
 */
function testShiftWidening(): void {
  let a: int = 1
  let b: long = 3
  let r1: long = a << b
  let r2: long = a >> b

  let c: int = 8
  let d: byte = 2
  let r3: int = c >> d
  let r4: int = c << d
}
