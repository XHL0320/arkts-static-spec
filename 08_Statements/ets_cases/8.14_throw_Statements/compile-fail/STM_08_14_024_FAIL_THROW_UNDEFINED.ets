/**
 * @id STM_08_14_024_FAIL_THROW_UNDEFINED
 * @expect compile-fail
 * @section 8.14
 * @design throw undefined 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testThrowUndefinedFail(): void {
  throw undefined
}
