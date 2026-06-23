/**
 * @id CCY_16_03_010_FAIL_ASYNC_IN_STATIC_INIT
 * @expect compile-fail
 * @section 16.3
 * @design async 函数在静态初始化中调用
 * @note 反向用例：验证 async 函数在静态初始化上下文中被调用应编译错误
 */
async function foo(): Promise<void> {}
class Bar {
    static x: Promise<void> = foo();
}
