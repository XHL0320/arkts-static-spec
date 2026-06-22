/**
 * @id STM_08_11_024_FAIL_CONTINUE_WRONG_LABEL
 * @expect compile-fail
 * @section 8.11
 * @design continue 引用不存在的 label 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testContinueWrongLabelFail(): void {
  for (let i: int = 0; i < 3; i++) { continue nonexistent }
}
