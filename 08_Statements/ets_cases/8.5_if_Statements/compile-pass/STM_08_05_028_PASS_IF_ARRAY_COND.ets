/**
 * @id STM_08_05_028_FAIL_IF_CONDITION_ARRAY
 * @expect compile-pass
 * @section 8.5
 * @design 数组类型作为 if 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testIfConditionArrayFail(): void {
  let arr: int[] = [1, 2, 3]
  if (arr) { console.log("bad") }
}
