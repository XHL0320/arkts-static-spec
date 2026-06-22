/**
 * @id STM_08_07_029_FAIL_WHILE_VOID_COND
 * @expect compile-pass
 * @section 8.7
 * @design void 函数作为 while 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function voidFunc(): void {}
function testWhileVoidCondFail(): void {
  while (voidFunc()) { console.log("bad") }
}
