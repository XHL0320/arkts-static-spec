/**
 * @id CON_06_01_016_FAIL_DECLARATION_VAR_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Declaration context: 变量声明时表达式类型(string)与标注类型(number)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testDeclarationVarMismatchFail(): void {
  let invalidNum: number = "not a number"
}
