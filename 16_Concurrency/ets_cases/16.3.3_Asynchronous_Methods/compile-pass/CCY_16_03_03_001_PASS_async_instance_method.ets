/**
 * @id CCY_16_03_03_001_PASS_async_instance_method
 * @expect compile-pass
 * @section 16.3.3
 * @design async 实例方法
 * @note 正向用例：验证 async 实例方法通过编译
 */
class MyClass {
    async getValue(): Promise<number> {
        return 42;
    }
}
