/**
 * @id CCY_16_03_01_093_FAIL_async_static_init
 * @expect compile-fail
 * @section 16.3.1
 * @design async 函数在静态初始化中调用
 * @note 反向用例：验证 async 函数在静态初始化中调用应编译错误
 */
async function foo(): Promise<void> {}
class Bar {
    static x: Promise<void> = foo();
}
