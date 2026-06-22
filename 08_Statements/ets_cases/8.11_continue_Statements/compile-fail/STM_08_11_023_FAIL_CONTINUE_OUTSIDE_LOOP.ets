/**
 * @id STM_08_11_023_FAIL_CONTINUE_OUTSIDE_LOOP
 * @expect compile-fail
 * @section 8.11
 * @design continue 在循环外使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testContinueOutsideLoopFail(): void {
  continue
}
