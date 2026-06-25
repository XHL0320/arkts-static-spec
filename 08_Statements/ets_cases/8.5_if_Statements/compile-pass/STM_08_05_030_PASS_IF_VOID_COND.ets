/**
 * @id STM_08_05_030_PASS_IF_VOID_COND
 * @expect compile-pass
 * @section 8.5
 * @design void(≡undefined)类型作为 if 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false；该特性 spec 标注未来版本将废弃（见 issue D-8.05-01）
 */
function voidFunc(): void {}
function testIfVoidFuncFail(): void {
  if (voidFunc()) { console.log("bad") }
}
