/**
 * @id CON_06_01_020_FAIL_ASSIGNMENT_FIELD_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Assignment context: 字段赋值时表达式类型(boolean)与字段类型(int)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Holder {
  value: int = 0
}

function testAssignmentFieldMismatchFail(): void {
  let h: Holder = new Holder()
  h.value = false
}
