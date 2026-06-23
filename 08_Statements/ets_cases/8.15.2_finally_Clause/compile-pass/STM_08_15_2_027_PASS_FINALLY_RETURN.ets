/**
 * @id STM_08_15_2_027_FAIL_FINALLY_RETURN_OVERRIDE
 * @expect compile-pass
 * @section 8.15.2
 * @design finally 中 return 会覆盖 try 中的 return
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testFinallyReturnOverrideFail(): int {
  try { return 1 } finally { return 2 }
}
function testCallOverride(): void {
  let r: int = testFinallyReturnOverrideFail()
  console.log(r.toString())
}
