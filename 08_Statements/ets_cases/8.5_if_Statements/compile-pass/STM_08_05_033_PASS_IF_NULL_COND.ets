/**
 * @id STM_08_05_033_PASS_IF_NULL_COND
 * @expect compile-pass
 * @section 8.5
 * @design null 类型作为 if 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false；该特性 spec 标注未来版本将废弃（见 issue D-8.05-01）
 */
function testIfNullConditionFail(): void {
  if (null) { console.log("bad") }
}
