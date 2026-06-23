/**
 * @id LEX_02_08_007_PASS_ASSIGNMENT_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 简单赋值与算术复合赋值 = += -= *= /= %= **=
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testAssignmentOps(): void {
  let x: number = 10
  x = 20
  x += 5
  x -= 2
  x *= 3
  x /= 2
  x %= 4
  x **= 2
}
