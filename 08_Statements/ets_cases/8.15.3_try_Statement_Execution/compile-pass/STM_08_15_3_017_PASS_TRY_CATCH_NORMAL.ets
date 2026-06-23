/**
 * @id STM_08_15_3_017_PASS_TRY_CATCH_NORMAL
 * @expect compile-pass
 * @section 8.15.3
 * @design try-catch 正常完成
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryCatchNormal(): void {
  try { throw new Error() } catch (e) { console.log("caught") }
  console.log("after try")
}
