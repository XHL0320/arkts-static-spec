/**
 * @id CCY_16_03_02_090_FAIL_await_non_async_lambda
 * @expect compile-fail
 * @section 16.3.2
 * @design await 在非 async lambda 中
 * @note 反向用例：验证 await 在非 async lambda 中应编译错误
 */
function main(): void {
    let fn = () => {
        let x = await 42;
    };
}
