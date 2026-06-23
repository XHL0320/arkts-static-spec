/**
 * @id STM_08_08_024_FAIL_FOR_ARRAY_COND
 * @expect compile-pass
 * @section 8.8
 * @design 数组作为 for 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testForArrayCondFail(): void {
  for (let i: int = 0; [1,2,3]; i++) { console.log("bad") }
}
