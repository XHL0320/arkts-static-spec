/**
 * @id STM_08_10_024_FAIL_BREAK_WRONG_LABEL
 * @expect compile-fail
 * @section 8.10
 * @design break 引用不存在的 label 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBreakWrongLabelFail(): void {
  for (let i: int = 0; i < 3; i++) {
    break nonexistent_label
  }
}
