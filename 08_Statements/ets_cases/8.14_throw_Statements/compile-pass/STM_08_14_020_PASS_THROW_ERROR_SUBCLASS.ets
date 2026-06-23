/**
 * @id STM_08_14_020_PASS_THROW_ERROR_SUBCLASS
 * @expect compile-pass
 * @section 8.14
 * @design throw Error 子类实例
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class CustomError extends Error {}
function testThrowErrorSubclass(): void {
  let e: CustomError = new CustomError()
  try { throw e } catch (e) { console.log("caught") }
}
