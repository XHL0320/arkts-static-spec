/**
 * @id STM_08_15_3_018_PASS_TRY_PROPAGATION
 * @expect compile-pass
 * @section 8.15.3
 * @design try 中异常向外层传播
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryPropagation(): void {
  try { try { throw new Error() } catch (e) { throw e } } catch (e) { console.log("outer") }
}
