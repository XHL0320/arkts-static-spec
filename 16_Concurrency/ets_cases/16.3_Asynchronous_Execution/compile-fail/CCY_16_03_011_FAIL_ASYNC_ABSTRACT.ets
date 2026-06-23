/**
 * @id CCY_16_03_011_FAIL_ASYNC_ABSTRACT
 * @expect compile-fail
 * @section 16.3
 * @design async 函数有 abstract 修饰
 * @note 反向用例：验证 async abstract 方法应编译错误
 */
abstract class Base {
    abstract async foo(): Promise<void>;
}
