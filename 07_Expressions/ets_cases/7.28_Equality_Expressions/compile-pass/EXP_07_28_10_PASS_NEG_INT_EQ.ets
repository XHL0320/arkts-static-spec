/**
 * @id EXP_07_28_10_PASS_NEG_INT_EQ
 * @expect compile-pass
 * @section 7.28
 * @design 负整数相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testNegIntEq(): void {
  let a: int = -5; let b: int = -5; let r: boolean = a == b
  console.log(r.toString())
}
