/**
 * @id CON_06_03_003_PASS_MULTIPLICATIVE_WIDENING
 * @expect compile-pass
 * @section 6.3
 * @design 乘法运算: int * double / int * long, widening 后运算
 * @note 正向用例：验证乘法运算的 widening 编译通过
 */
function testMultiplicativeWidening(): void {
  let a: int = 10
  let b: double = 2.5
  let r1: double = a * b

  let c: int = 3
  let d: long = 100
  let r2: long = c * d

  let e: int = 7
  let f: double = 3.0
  let r3: double = e / f

  let g: int = 10
  let h: int = 3
  let r4: int = g % h
}
