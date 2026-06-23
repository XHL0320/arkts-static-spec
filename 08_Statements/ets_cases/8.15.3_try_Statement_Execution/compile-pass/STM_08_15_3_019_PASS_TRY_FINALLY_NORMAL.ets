/**
 * @id STM_08_15_3_019_PASS_TRY_FINALLY_NORMAL
 * @expect compile-pass
 * @section 8.15.3
 * @design try-finally 正常执行流程
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryFinallyNormal(): void {
  try { console.log("body") } finally { console.log("cleanup") }
}
