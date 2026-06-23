/**
 * @id EXP_07_01_01_018_PASS_PREFIX_INCREMENT_EXPONENT
 * @expect compile-pass
 * @section 7.1.1
 * @design 前置递增 `++` 属于一元运算符优先级组，高于幂 `**`、乘除等
 * @note 正向用例：验证前置递增/递减与幂运算优先级
 */
function testPrefixIncrementExponent(): void {
  let a: int = 3
  let b: double = ++a ** 2
  let c: int = 3
  let d: int = --c * 5
}
