/**
 * @id STM_08_07_030_PASS_WHILE_NULL
 * @expect compile-pass
 * @section 8.7
 * @design null 作为 while 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false（循环体不可达，编译器仅给 Warning）
 */
function testWhileNullCondFail(): void {
  while (null) { console.log("bad") }
}
