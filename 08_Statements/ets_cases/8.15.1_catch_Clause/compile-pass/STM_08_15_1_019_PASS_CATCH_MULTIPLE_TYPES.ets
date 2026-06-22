/**
 * @id STM_08_15_1_019_PASS_CATCH_MULTIPLE_TYPES
 * @expect compile-pass
 * @section 8.15.1
 * @design catch 块处理多种异常类型
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class ErrA extends Error {}; class ErrB extends Error {}
function testCatchMultipleTypes(): void {
  try { throw new ErrA() } catch (e) { if (e instanceof ErrB) { console.log("B") } }
}
