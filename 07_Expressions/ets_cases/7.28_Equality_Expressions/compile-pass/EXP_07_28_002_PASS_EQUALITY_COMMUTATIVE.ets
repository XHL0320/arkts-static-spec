/**
 * @id EXP_07_28_002_PASS_EQUALITY_COMMUTATIVE
 * @expect compile-pass
 * @section 7.28
 * @design 相等运算交换律验证
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testEqualityCommutative(): void {
  let a: int = 5; let b: int = 10
  let r1: boolean = a == b; let r2: boolean = b == a
  console.log(r1.toString(), r2.toString())
}
