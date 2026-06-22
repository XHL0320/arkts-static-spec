/**
 * @id EXP_07_32_01_004_FAIL_ASSIGN_TO_CONST
 * @expect compile-fail
 * @section 7.32.1
 * @design const 变量赋值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testAssignToConstFail(): void {
  const x: int = 0
  x = 10
  console.log(x.toString())
}
