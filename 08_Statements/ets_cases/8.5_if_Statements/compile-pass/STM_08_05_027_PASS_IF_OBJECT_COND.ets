/**
 * @id STM_08_05_027_FAIL_IF_CONDITION_OBJECT
 * @expect compile-pass
 * @section 8.5
 * @design Object 类型作为 if 条件应产生编译错误（非 Extended Conditional）
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testIfConditionObjectFail(): void {
  let obj: Object = new Object()
  if (obj) { console.log("bad") }
}
