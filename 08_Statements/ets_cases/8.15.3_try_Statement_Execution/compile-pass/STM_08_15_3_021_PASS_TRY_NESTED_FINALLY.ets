/**
 * @id STM_08_15_3_021_PASS_TRY_NESTED_FINALLY
 * @expect compile-pass
 * @section 8.15.3
 * @design 嵌套 try 各自 finally 执行
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryNestedFinally(): void {
  try { try { console.log("inner") } finally { console.log("inner finally") } } finally { console.log("outer finally") }
}
