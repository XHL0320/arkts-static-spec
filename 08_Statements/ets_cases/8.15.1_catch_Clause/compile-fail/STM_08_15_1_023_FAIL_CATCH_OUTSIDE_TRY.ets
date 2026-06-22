/**
 * @id STM_08_15_1_023_FAIL_CATCH_OUTSIDE_TRY
 * @expect compile-fail
 * @section 8.15.1
 * @design catch 在 try 外部使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchOutsideTryFail(): void {
  catch (e) { console.log("bad") }
}
