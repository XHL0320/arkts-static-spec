/**
 * @id CON_06_01_028_FAIL_ASSIGNMENT_NARROWING
 * @expect compile-fail
 * @section 6.1
 * @design Assignment context: number 类型不能隐式 narrowing 转换为 int 类型（赋值上下文）
 * @note 反向用例：验证 narrowing 转换在赋值上下文中应产生编译时错误
 */
function testAssignmentNarrowingFail(): void {
  let numVal: number = 5.5
  let intVal: int = 0
  intVal = numVal
}
