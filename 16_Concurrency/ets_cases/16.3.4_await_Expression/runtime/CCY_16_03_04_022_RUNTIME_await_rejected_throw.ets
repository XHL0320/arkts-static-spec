/**
 * @id CCY_16_03_04_022_RUNTIME_await_rejected_throw
 * @expect runtime
 * @section 16.3.4
 * @design await rejected Promise 抛出异常
 * @note 运行时用例：验证 await 拒绝的 Promise 抛出 rejection 错误
 */
async function fail(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("rejected"));
    });
    let v: number = await p;
    return v;
}
function main(): void {
    let p: Promise<number> = fail();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
