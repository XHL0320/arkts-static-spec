/**
 * @id STM_08_10_026_FAIL_BREAK_IF_IN_LOOP
 * @expect compile-fail
 * @section 8.10
 * @design break 在函数顶级而非循环中应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBreakTopLevelFail(): void {
  if (true) { break }
}
