/**
 * @id STM_08_06_025_FAIL_BREAK_LABEL_NOT_FOUND
 * @expect compile-fail
 * @section 8.6
 * @design break 引用不存在的 label 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBreakLabelNotFoundFail(): void {
  for (let i: int = 0; i < 5; i++) {
    break nonexistent
  }
  console.log("never")
}
