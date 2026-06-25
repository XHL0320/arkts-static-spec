/**
 * @id STM_08_07_026_PASS_WHILE_OBJECT
 * @expect compile-pass
 * @section 8.7
 * @design Object 作为 while 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：Any other nonNullish type 恒为 true（死循环风险，仅验证编译通过）
 */
function testWhileObjectCondFail(): void {
  while (new Object()) { console.log("bad") }
}
