/**
 * @id STM_08_05_033_FAIL_IF_CONDITION_NULL
 * @expect compile-pass
 * @section 8.5
 * @design null 不能直接作为 if 条件
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testIfNullConditionFail(): void {
  if (null) { console.log("bad") }
}
