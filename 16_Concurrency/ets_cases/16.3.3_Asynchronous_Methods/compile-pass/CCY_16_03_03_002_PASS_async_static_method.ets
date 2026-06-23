/**
 * @id CCY_16_03_03_002_PASS_async_static_method
 * @expect compile-pass
 * @section 16.3.3
 * @design async 静态方法
 * @note 正向用例：验证 async 静态方法通过编译
 */
class MyClass {
    static async getValue(): Promise<number> {
        return 42;
    }
}
