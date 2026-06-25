/**
 * @id STM_08_08_025_PASS_FOR_VOID
 * @expect compile-pass
 * @section 8.8
 * @design void(≡undefined)作为 for 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false
 */
function voidFunc(): void {}
function testForVoidCondFail(): void {
  for (let i: int = 0; voidFunc(); i++) { console.log("bad") }
}
