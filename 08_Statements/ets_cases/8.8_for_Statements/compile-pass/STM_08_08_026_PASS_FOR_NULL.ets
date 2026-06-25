/**
 * @id STM_08_08_026_PASS_FOR_NULL
 * @expect compile-pass
 * @section 8.8
 * @design null 作为 for 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false（循环体不执行）
 */
function testForNullCondFail(): void {
  for (let i: int = 0; null; i++) { console.log("bad") }
}
