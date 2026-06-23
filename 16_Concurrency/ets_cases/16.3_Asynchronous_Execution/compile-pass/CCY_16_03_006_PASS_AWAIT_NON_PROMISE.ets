/**
 * @id CCY_16_03_006_PASS_AWAIT_NON_PROMISE
 * @expect compile-pass
 * @section 16.3
 * @design await 非 Promise 值（不挂起）
 * @note 正向用例：验证 await 非 Promise 值通过编译且不挂起
 */
async function getValue(): Promise<number> {
    let v: number = await 42;
    return v;
}
