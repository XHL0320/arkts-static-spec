/**
 * @id CON_06_01_027_FAIL_DECLARATION_NARROWING
 * @expect compile-fail
 * @section 6.1
 * @design Declaration context: number 类型不能隐式 narrowing 转换为 int 类型
 * @note 反向用例：验证 narrowing 转换在声明上下文中应产生编译时错误
 */
function testDeclarationNarrowingFail(): void {
  let numVal: number = 3.14
  let intVal: int = numVal
}
