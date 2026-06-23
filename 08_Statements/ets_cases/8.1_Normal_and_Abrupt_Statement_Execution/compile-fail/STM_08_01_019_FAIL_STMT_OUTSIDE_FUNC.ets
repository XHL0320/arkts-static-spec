/**
 * @id STM_08_01_019_FAIL_STMT_OUTSIDE_FUNC
 * @expect compile-fail
 * @section 8.1
 * @design 在函数外部使用 return 语句应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */

return 5
function testStmtOutsideFuncFail(): void {
  console.log("never reached")
}
