/**
 * @id CCY_16_03_04_004_PASS_await_promise_variable
 * @expect compile-pass
 * @section 16.3.4
 * @design await Promise 变量
 * @note 正向用例：验证 await Promise 类型变量通过编译
 */
async function f(): Promise<void> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    let result: number = await p;
    console.log(result);
}
