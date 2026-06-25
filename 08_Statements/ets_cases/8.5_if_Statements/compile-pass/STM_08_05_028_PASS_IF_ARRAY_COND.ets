/**
 * @id STM_08_05_028_PASS_IF_ARRAY_COND
 * @expect compile-pass
 * @section 8.5
 * @design 数组类型作为 if 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：Any other nonNullish type 恒为 true；该特性 spec 标注未来版本将废弃（见 issue D-8.05-01）
 */
function testIfConditionArrayFail(): void {
  let arr: int[] = [1, 2, 3]
  if (arr) { console.log("bad") }
}
