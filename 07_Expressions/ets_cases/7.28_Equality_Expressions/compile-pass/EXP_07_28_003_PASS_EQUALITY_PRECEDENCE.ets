/**
 * @id EXP_07_28_003_PASS_EQUALITY_PRECEDENCE
 * @expect compile-pass
 * @section 7.28
 * @design 相等运算符优先级（低于关系运算符）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testEqualityPrecedence(): void {
  let a: int = 1; let b: int = 2; let c: int = 3; let d: int = 4
  let r: boolean = a < b == c < d
  console.log(r.toString())
}
