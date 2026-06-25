/**
 * @id STM_08_07_029_PASS_WHILE_VOID
 * @expect compile-pass
 * @section 8.7
 * @design void(≡undefined)函数调用作为 while 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false
 */
function voidFunc(): void {}
function testWhileVoidCondFail(): void {
  while (voidFunc()) { console.log("bad") }
}
