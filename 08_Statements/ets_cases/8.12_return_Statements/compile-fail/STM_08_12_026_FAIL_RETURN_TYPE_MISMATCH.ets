/**
 * @id STM_08_12_026_FAIL_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 8.12
 * @design return 类型不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function getInt(): int { return "not_int" }
function testReturnTypeMismatchFail(): void {
  getInt()
}
