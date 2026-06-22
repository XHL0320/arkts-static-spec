/**
 * @id STM_08_15_3_022_FAIL_TRY_ABRUPT_NO_HANDLER
 * @expect compile-pass
 * @section 8.15.3
 * @design try 块异常无 handler 传播
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testTryAbruptNoHandler(): void {
  try { throw new Error() } finally { console.log("cleanup") }
  console.log("after")
}
