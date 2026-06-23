/**
 * @id EXP2_17_01_008_FAIL_STRING_ASSIGN_TO_CHAR
 * @expect compile-fail
 * @section 17.1
 * @design string 类型不能赋值给 char 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testStringAssignToCharFail(): void {
  let s: string = "a"
  let c: char = s
  console.log(c)
}
