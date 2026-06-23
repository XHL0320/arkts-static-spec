/**
 * @id CCY_16_03_04_001_PASS_await_promise
 * @expect compile-pass
 * @section 16.3.4
 * @design await Promise 表达式
 * @note 正向用例：验证 await Promise 在 async 函数中通过编译
 */
async function g(): Promise<Object> {
    return new Object();
}
async function f(): Promise<void> {
    let v1: Object = await g();
}
