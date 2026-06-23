/**
 * @id CCY_16_03_01_090_FAIL_async_abstract
 * @expect compile-fail
 * @section 16.3.1
 * @design async 方法有 abstract 修饰
 * @note 反向用例：验证 async abstract 方法应编译错误
 */
abstract class Base {
    abstract async foo(): Promise<void>;
}
