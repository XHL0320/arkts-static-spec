/**
 * @id STM_08_14_022_PASS_THROW_IN_LOOP
 * @expect compile-pass
 * @section 8.14
 * @design 在循环中使用 throw（被 catch 捕获）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testThrowInLoop(): void {
  for (let i: int = 0; i < 5; i++) {
    try { if (i == 2) throw new Error() } catch (e) { console.log("caught") }
  }
}
