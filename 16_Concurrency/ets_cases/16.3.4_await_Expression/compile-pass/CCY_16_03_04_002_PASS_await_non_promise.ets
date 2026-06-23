/**
 * @id CCY_16_03_04_002_PASS_await_non_promise
 * @expect compile-pass
 * @section 16.3.4
 * @design await 非 Promise 值（不挂起）
 * @note 正向用例：验证 await 非 Promise 值通过编译且不挂起
 */
async function f(): Promise<void> {
    let v2: number = await 42;
}
