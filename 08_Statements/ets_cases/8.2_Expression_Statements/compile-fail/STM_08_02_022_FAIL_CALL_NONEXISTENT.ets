/**
 * @id STM_08_02_022_FAIL_CALL_NONEXISTENT
 * @expect compile-fail
 * @section 8.2
 * @design 调用不存在的函数应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCallNonexistentFail(): void {
  nonexistentFunc()
  console.log("never")
}
