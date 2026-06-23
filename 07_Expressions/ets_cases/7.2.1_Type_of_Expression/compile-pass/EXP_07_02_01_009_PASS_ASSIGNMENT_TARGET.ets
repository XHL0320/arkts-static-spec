/**
 * @id EXP_07_02_01_009_PASS_ASSIGNMENT_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 赋值表达式左侧变量类型作为 target type
 * @note 正向用例：验证赋值提供 target type
 */
function testAssignmentTarget(): void {
  let a: int = 0
  a = 42
  let s: string = ""
  s = "hello"
}
