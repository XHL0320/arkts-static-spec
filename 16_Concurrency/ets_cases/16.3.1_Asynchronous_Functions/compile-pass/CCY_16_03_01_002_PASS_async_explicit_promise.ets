/**
 * @id CCY_16_03_01_002_PASS_async_explicit_promise
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数显式返回 Promise<T> 实例
 * @note 正向用例：验证 async 函数体内显式返回 Promise<T> 实例通过编译
 */
async function getData(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    return p;
}
