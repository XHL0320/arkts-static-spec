/**
 * @id STM_08_14_023_FAIL_THROW_NULL
 * @expect compile-fail
 * @section 8.14
 * @design throw null 应产生编译错误（null 不可分配给 Error）
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testThrowNullFail(): void {
  throw null
}
