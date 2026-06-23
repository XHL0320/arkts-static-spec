/**
 * @id EXP2_17_01_009_FAIL_BOOLEAN_ASSIGN_TO_CHAR
 * @expect compile-fail
 * @section 17.1
 * @design boolean 类型不能赋值给 char 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBooleanAssignToCharFail(): void {
  let b: boolean = true
  let c: char = b
  console.log(c)
}
