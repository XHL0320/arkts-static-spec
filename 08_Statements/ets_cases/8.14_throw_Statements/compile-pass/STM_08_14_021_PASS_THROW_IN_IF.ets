/**
 * @id STM_08_14_021_PASS_THROW_IN_IF
 * @expect compile-pass
 * @section 8.14
 * @design 在 if 语句中使用 throw
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testThrowInIf(): void {
  let cond: boolean = true
  if (cond) { try { throw new Error() } catch (e) { console.log("caught") } }
  else { console.log("no throw") }
}
