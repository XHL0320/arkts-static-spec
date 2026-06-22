/**
 * @id EXP_07_32_003_FAIL_ASSIGN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.32
 * @design 类型不兼容赋值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testAssignTypeMismatchFail(): void {
  let a: int = 0; let b: string = "hello"
  a = b
  console.log(a.toString())
}
