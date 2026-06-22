/**
 * @id STM_08_05_030_FAIL_IF_NON_BOOL_VOID_COND
 * @expect compile-pass
 * @section 8.5
 * @design void 返回函数不能作为 if 条件
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function voidFunc(): void {}
function testIfVoidFuncFail(): void {
  if (voidFunc()) { console.log("bad") }
}
