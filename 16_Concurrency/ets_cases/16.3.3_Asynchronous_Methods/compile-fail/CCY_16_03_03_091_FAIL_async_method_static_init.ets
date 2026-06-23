/**
 * @id CCY_16_03_03_091_FAIL_async_method_static_init
 * @expect compile-fail
 * @section 16.3.3
 * @design async 方法在静态初始化中调用
 * @note 反向用例：验证 async 静态方法在 static init 中调用编译报错
 */
class MyClass {
    static async foo(): Promise<void> {}
    static {
        MyClass.foo();
    }
}
