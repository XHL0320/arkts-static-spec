/**
 * @id STM_08_15_3_023_FAIL_FINALLY_ABRUPT_CAUSES_TRY_ABRUPT
 * @expect compile-pass
 * @section 8.15.3
 * @design finally 异常完成导致 try 语句异常完成
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testFinallyAbrupt(): void {
  try { throw new Error() } finally { throw new Error("finally error") }
  console.log("never")
}
