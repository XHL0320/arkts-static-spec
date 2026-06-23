/**
 * @id STM_08_15_3_016_PASS_TRY_NORMAL_FLOW
 * @expect compile-pass
 * @section 8.15.3
 * @design try 正常完成流程
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryNormalFlow(): void {
  try { let x: int = 1 } catch (e) { console.log("no") }
}
