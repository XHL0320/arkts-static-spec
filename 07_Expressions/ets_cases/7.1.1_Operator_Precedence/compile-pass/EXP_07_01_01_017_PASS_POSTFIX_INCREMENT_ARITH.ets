/**
 * @id EXP_07_01_01_017_PASS_POSTFIX_INCREMENT_ARITH
 * @expect compile-pass
 * @section 7.1.1
 * @design 后置递增 `++` 优先级高于算术运算符
 * @note 正向用例：验证后置递增与算术优先级
 */
function testPostfixIncrementArith(): void {
  let a: int = 5
  let b: int = a++ + 2
  let c: int = 5
  let d: int = 3 * c--
}
