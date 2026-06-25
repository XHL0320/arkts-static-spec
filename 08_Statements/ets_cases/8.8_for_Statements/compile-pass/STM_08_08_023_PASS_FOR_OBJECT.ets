/**
 * @id STM_08_08_023_PASS_FOR_OBJECT
 * @expect compile-pass
 * @section 8.8
 * @design Object 作为 for 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：Any other nonNullish type 恒为 true（死循环风险，仅验证编译通过）
 */
function testForObjectCondFail(): void {
  for (let i: int = 0; new Object(); i++) { console.log("bad") }
}
