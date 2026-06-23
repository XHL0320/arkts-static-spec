/**
 * @id CCY_16_03_005_PASS_AWAIT_PROMISE
 * @expect compile-pass
 * @section 16.3
 * @design await Promise 表达式
 * @note 正向用例：验证 await Promise 在 async 函数中通过编译
 */
async function getData(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => { resolve(42); });
    let result: number = await p;
    return result;
}
