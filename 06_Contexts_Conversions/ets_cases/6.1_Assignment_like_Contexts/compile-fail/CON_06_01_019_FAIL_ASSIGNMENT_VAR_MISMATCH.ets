/**
 * @id CON_06_01_019_FAIL_ASSIGNMENT_VAR_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Assignment context: 变量赋值时表达式类型(string)与变量类型(int)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testAssignmentVarMismatchFail(): void {
  let x: int = 0
  x = "not an int"
}
