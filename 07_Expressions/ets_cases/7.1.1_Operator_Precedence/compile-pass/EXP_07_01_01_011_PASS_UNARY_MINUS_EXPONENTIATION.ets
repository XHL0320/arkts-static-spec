/**
 * @id EXP_07_01_01_011_PASS_UNARY_MINUS_EXPONENTIATION
 * @expect compile-pass
 * @section 7.1.1
 * @design 前置一元 `-` 优先级高于幂 `**`，`-3 ** 2` 等价 `(-3) ** 2`
 * @note 正向用例：验证前置一元和幂运算优先级
 */
function testUnaryMinusExponentiation(): void {
  let a: double = (-3) ** 2
  let b: double = (-2) ** 3 ** 2
  let c: double = (+5) ** 2
}
