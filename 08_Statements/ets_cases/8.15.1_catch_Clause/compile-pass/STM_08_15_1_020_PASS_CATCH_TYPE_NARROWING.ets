/**
 * @id STM_08_15_1_020_PASS_CATCH_TYPE_NARROWING
 * @expect compile-pass
 * @section 8.15.1
 * @design catch 块中通过 instanceof 进行类型收窄
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class MyErr extends Error { errCode: int = 0; constructor(c: int) { super(); this.errCode = c } }
function testCatchTypeNarrowing(): void {
  try { throw new MyErr(404) } catch (e) {
    if (e instanceof MyErr) { let err: MyErr = e as MyErr; console.log(err.errCode.toString()) } }
}
