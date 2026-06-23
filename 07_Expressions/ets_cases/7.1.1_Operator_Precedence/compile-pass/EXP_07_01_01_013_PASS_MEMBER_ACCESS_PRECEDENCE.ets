/**
 * @id EXP_07_01_01_013_PASS_MEMBER_ACCESS_PRECEDENCE
 * @expect compile-pass
 * @section 7.1.1
 * @design 成员访问 `.` 优先级高于算术运算符，字段值先取出再参与运算
 * @note 正向用例：验证成员访问优先级高于算术
 */
class Point {
  x: int = 3
  y: int = 4
}

function testMemberAccessPrecedence(): void {
  let p: Point = new Point()
  let a: int = p.x * 2 + p.y
  let b: int = p.x + p.y * 2
}
