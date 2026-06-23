/**
 * @id STM_08_08_026_FAIL_FOR_NULL_COND
 * @expect compile-pass
 * @section 8.8
 * @design null 作为 for 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testForNullCondFail(): void {
  for (let i: int = 0; null; i++) { console.log("bad") }
}
