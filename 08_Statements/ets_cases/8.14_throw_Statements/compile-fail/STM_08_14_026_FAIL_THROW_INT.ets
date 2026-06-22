/**
 * @id STM_08_14_026_FAIL_THROW_INT
 * @expect compile-fail
 * @section 8.14
 * @design throw int 值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testThrowIntFail(): void {
  throw 42
}
