/**
 * @id STM_08_15_025_PASS_TRY_NESTED
 * @expect compile-pass
 * @section 8.15
 * @design 嵌套 try 语句
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTryNested(): void {
  try { try { throw new Error() } catch (e) { console.log("inner") } } catch (e) { console.log("outer") }
}
