/**
 * @id CON_06_01_018_FAIL_DECLARATION_FIELD_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Declaration context: 字段声明时表达式类型(int)与标注类型(string)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
class BadField {
  invalidField: string = 123
}

function testDeclarationFieldMismatchFail(): void {
  let obj: BadField = new BadField()
}
