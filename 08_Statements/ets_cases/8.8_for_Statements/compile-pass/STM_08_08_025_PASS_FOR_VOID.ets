/**
 * @id STM_08_08_025_FAIL_FOR_VOID_COND
 * @expect compile-pass
 * @section 8.8
 * @design void 函数作为 for 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function voidFunc(): void {}
function testForVoidCondFail(): void {
  for (let i: int = 0; voidFunc(); i++) { console.log("bad") }
}
