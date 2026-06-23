/**
 * @id CCY_16_03_03_090_FAIL_async_abstract_method
 * @expect compile-fail
 * @section 16.3.3
 * @design async 抽象方法
 * @note 反向用例：验证 async abstract 方法应编译错误
 */
abstract class Base {
    abstract async foo(): Promise<void>;
}
