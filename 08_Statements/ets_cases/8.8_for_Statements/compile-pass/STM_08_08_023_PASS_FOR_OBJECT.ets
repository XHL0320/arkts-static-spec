/**
 * @id STM_08_08_023_FAIL_FOR_OBJECT_COND
 * @expect compile-pass
 * @section 8.8
 * @design Object 作为 for 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testForObjectCondFail(): void {
  for (let i: int = 0; new Object(); i++) { console.log("bad") }
}
