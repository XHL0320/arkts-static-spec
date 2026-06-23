/**
 * @id EXP2_17_01_007_FAIL_CHAR_ASSIGN_TO_INT
 * @expect compile-fail
 * @section 17.1
 * @design char 类型值不能隐式赋值给 int 类型，需要显式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharAssignToIntFail(): void {
  let ch: char = c'A'
  let n: int = ch
  console.log(n)
}
