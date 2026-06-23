/**
 * @id STM_08_14_025_FAIL_THROW_STRING
 * @expect compile-fail
 * @section 8.14
 * @design throw string 应产生编译错误（非 Error 类型）
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testThrowStringFail(): void {
  throw "error_message"
}
