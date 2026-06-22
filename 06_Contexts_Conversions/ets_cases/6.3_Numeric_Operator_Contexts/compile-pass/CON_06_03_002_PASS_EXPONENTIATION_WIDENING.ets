/**
 * @id CON_06_03_002_PASS_EXPONENTIATION_WIDENING
 * @expect compile-pass
 * @section 6.3
 * @design 指数运算: int ** long, int widening 为 long 后运算
 * @note 正向用例：验证指数运算的 widening 编译通过
 */
function testExponentiationWidening(): void {
  let a: int = 2
  let b: long = 3
  let r1: double = a ** b

  let c: int = 5
  let r2: double = c ** 2
}
