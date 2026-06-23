/**
 * @id CCY_16_03_01_092_FAIL_async_return_type
 * @expect compile-fail
 * @section 16.3.1
 * @design async 函数返回类型非 Promise
 * @note 反向用例：验证 async 函数返回类型非 Promise 应编译错误
 */
async function foo(): number {
    return 42;
}
