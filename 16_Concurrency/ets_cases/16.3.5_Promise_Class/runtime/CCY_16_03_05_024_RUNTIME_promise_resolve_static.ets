/**
 * @id CCY_16_03_05_024_RUNTIME_promise_resolve_static
 * @expect runtime
 * @section 16.3.5
 * @design Promise.resolve 静态方法创建已决议 Promise
 * @note 运行时用例：验证 Promise.resolve 创建已 resolve 的 Promise
 */
async function test(): Promise<number> {
    let p: Promise<number> = Promise.resolve(42);
    let v: number = await p;
    return v;
}
function main(): void {
    let p: Promise<number> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
