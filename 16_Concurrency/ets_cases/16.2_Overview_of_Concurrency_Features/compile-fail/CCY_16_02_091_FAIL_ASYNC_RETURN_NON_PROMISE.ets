/**
 * @id CCY_16_02_091_FAIL_ASYNC_RETURN_NON_PROMISE
 * @expect compile-fail
 * @section 16.2
 * @design async 函数必须返回 Promise<T>
 * @note 反向用例：验证 async 函数返回非 Promise 类型编译报错
 */
async function foo(): string {
    return "hello";
}
