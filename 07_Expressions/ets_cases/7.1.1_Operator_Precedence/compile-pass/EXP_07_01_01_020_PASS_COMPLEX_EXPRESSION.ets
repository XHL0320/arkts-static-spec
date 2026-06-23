/**
 * @id EXP_07_01_01_020_PASS_COMPLEX_EXPRESSION
 * @expect compile-pass
 * @section 7.1.1
 * @design 复杂表达式验证多级运算符优先级的正确编译
 * @note 正向用例：含多级优先级的复杂表达式
 */
function testComplexExpression(): void {
  let a: int = 3
  let b: int = 5
  let c: boolean = a + b * 2 > 10 && a << 1 == b
  let d: int = a++ * 2 + b-- * 3
  let e: long = (a ** 2 + b * 3).toLong() >> 1
  let f: int = (a + b) * (a - b) / 2
}
