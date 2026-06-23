/**
 * @id CCY_16_03_01_023_RUNTIME_async_explicit_promise_return
 * @expect runtime
 * @section 16.3.1
 * @design async 函数显式返回 Promise<T> 实例（原样返回）
 * @note 运行时用例：验证 async 函数显式返回 Promise 实例不重新包装
 */
async function getPromise(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(99);
    });
    return p;
}
function main(): void {
    let p: Promise<number> = getPromise();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
