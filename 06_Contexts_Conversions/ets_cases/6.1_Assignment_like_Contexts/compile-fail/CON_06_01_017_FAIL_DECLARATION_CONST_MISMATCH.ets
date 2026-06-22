/**
 * @id CON_06_01_017_FAIL_DECLARATION_CONST_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Declaration context: const 声明时表达式类型(boolean)与标注类型(string)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testDeclarationConstMismatchFail(): void {
  const invalidStr: string = true
}
