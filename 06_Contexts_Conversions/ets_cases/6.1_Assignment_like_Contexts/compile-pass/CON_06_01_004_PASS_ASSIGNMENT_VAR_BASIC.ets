/**
 * @id CON_06_01_004_PASS_ASSIGNMENT_VAR_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Assignment context: 对已声明变量的赋值，表达式类型与变量类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testAssignmentVarBasic(): void {
  let x: number = 0
  x = 42
  x = -10

  let s: string = ""
  s = "updated"

  let b: boolean = false
  b = true
}
