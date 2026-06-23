/**
 * @id CCY_16_03_014_FAIL_AWAIT_NON_ASYNC
 * @expect compile-fail
 * @section 16.3
 * @design await 在非 async 函数中
 * @note 反向用例：验证 await 在非 async 函数中应编译错误
 */
function foo(): void {
    let x = await 42;
}
