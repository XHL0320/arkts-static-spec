/**
 * @id STM_08_15_1_018_PASS_CATCH_INSTANCEOF
 * @expect compile-pass
 * @section 8.15.1
 * @design catch 块中使用 instanceof 检查错误类型
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class DivError extends Error {}
function testCatchInstanceof(): void {
  try { throw new DivError() } catch (e) {
    if (e instanceof DivError) { console.log("div error") } }
}
