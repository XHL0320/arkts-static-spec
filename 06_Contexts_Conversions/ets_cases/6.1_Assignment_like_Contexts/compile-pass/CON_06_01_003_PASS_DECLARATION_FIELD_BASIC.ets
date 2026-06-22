/**
 * @id CON_06_01_003_PASS_DECLARATION_FIELD_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Declaration context: 类字段声明带显式类型标注和初始值，表达式类型与目标类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class MyClass {
  numField: number = 100
  strField: string = "default"
  boolField: boolean = true
  intField: int = 0
}

function testDeclarationFieldBasic(): void {
  let obj: MyClass = new MyClass()
  let n: number = obj.numField
  let s: string = obj.strField
}
