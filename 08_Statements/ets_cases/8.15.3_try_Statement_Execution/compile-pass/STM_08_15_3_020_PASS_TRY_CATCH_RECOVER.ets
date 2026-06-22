/**
 * @id STM_08_15_3_020_PASS_TRY_CATCH_RECOVER
 * @expect compile-pass
 * @section 8.15.3
 * @design try-catch 后程序正常恢复
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryCatchRecover(): void {
  let recovered: boolean = false
  try { throw new Error() } catch (e) { recovered = true }
  if (recovered) { console.log("recovered") }
}
