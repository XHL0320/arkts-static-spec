/**
 * @id EXP_07_29_002_PASS_BITWISE_PRECEDENCE
 * @expect compile-pass
 * @section 7.29
 * @design 位运算符优先级（& > ^ > |）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBitwisePrecedence(): void {
  let a: int = 1; let b: int = 2; let c: int = 4
  let r: int = a | b & c
  console.log(r.toString())
}
