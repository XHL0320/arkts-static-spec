/**
 * @id EXP_07_28_9_PASS_SELF_EQ
 * @expect compile-pass
 * @section 7.28
 * @design 值与自身相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testSelfEq(): void {
  let a: int = 5; let r: boolean = a == a
  console.log(r.toString())
}
