/**
 * @id EXP2_17_01_006_FAIL_INT_ASSIGN_TO_CHAR
 * @expect compile-fail
 * @section 17.1
 * @design int 类型值不能隐式赋值给 char 类型，需要显式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testIntAssignToCharFail(): void {
  let n: int = 65
  let c: char = n
  console.log(c)
}
