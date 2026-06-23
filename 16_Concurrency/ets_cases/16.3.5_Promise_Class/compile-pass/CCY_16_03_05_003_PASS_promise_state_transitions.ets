/**
 * @id CCY_16_03_05_003_PASS_promise_state_transitions
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise 状态转换
 * @note 正向用例：验证 Promise pending→resolved 状态转换通过编译
 */
async function foo(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    return await p;
}
