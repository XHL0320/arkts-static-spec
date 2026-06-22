/**
 * @id CON_06_01_005_PASS_ASSIGNMENT_FIELD_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Assignment context: 对对象字段的赋值，表达式类型与字段类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Data {
  value: int = 0
  label: string = ""
}

function testAssignmentFieldBasic(): void {
  let d: Data = new Data()
  d.value = 100
  d.label = "assigned"
}
