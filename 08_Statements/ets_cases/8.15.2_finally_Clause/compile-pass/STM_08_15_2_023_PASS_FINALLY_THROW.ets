/**
 * @id STM_08_15_2_023_FAIL_FINALLY_THROW_NOT_CAUGHT
 * @expect compile-pass
 * @section 8.15.2
 * @design finally 中 throw 未捕获时传播
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testFinallyThrowFail(): void {
  try { console.log("try") } finally { throw new Error("from finally") }
  console.log("never")
}
