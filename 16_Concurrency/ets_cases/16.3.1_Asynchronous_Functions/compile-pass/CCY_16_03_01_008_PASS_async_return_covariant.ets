/**
 * @id CCY_16_03_01_008_PASS_async_return_covariant
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数返回类型协变（子类型返回 Promise<Sub>）
 * @note 正向用例：验证 async 函数返回子类型 Promise 通过编译
 */
class Base {}
class Derived extends Base {}
async function getDerived(): Promise<Derived> {
    return new Derived();
}
