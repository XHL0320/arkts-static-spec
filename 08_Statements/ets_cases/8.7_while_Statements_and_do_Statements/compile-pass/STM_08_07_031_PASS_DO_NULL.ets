/**
 * @id STM_08_07_031_PASS_DO_NULL
 * @expect compile-pass
 * @section 8.7
 * @design null 作为 do-while 条件，受 Extended Conditional Expressions 支持，当前编译通过
 * @note spec §15.14.1 truthiness：null/undefined 恒为 false（do-while 体执行一次后终止）
 */
function testDoNullCondFail(): void {
  do { console.log("once") } while (null)
}
