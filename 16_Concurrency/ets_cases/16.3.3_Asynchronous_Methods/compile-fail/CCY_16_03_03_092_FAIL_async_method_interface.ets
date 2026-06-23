/**
 * @id CCY_16_03_03_092_FAIL_async_method_interface
 * @expect compile-fail
 * @section 16.3.3
 * @design async 方法在 interface 声明
 * @note 反向用例：验证 interface 中声明 async 方法编译报错
 */
interface MyInterface {
    async foo(): Promise<void>;
}
