/**
 * @id STM_08_07_027_FAIL_WHILE_ARRAY_COND
 * @expect compile-pass
 * @section 8.7
 * @design 数组作为 while 条件应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testWhileArrayCondFail(): void {
  while ([1,2,3]) { console.log("bad") }
}
