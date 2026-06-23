/**
 * @id STM_08_15_3_024_FAIL_TRY_CATCH_BLOCK_SCOPE
 * @expect compile-fail
 * @section 8.15.3
 * @design try 块内变量在 catch 中不可访问
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTryBlockScopeFail(): void {
  try { let x: int = 5; throw new Error() } catch (e) { console.log(x.toString()) }
}
