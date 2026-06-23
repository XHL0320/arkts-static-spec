/**
 * @id CCY_16_03_04_090_FAIL_await_outside_async
 * @expect compile-fail
 * @section 16.3.4
 * @design await 在非 async 函数中
 * @note 反向用例：验证 await 在非 async 函数中应编译错误
 */
function foo(): void {
    let x = await 42;
}
