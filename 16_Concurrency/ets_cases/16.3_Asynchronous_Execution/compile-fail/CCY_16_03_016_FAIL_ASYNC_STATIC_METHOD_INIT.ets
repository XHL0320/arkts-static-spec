/**
 * @id CCY_16_03_016_FAIL_ASYNC_STATIC_METHOD_INIT
 * @expect compile-fail
 * @section 16.3
 * @design async 静态方法在静态初始化中调用
 * @note 反向用例：验证 async 静态方法在静态初始化中调用应编译错误
 */
class MyClass {
    static async foo(): Promise<void> {}
    static x: Promise<void> = MyClass.foo();
}
