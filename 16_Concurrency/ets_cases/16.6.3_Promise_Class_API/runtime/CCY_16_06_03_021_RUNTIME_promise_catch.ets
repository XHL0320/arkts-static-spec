/**
 * @id CCY_16_06_03_021_RUNTIME_promise_catch
 * @expect runtime
 * @section 16.6.3
 * @design Promise.catch 回调运行时
 * @note 运行时用例：验证 Promise reject 后 catch 回调执行
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("fail"));
    });
    p.catch((e: Error) => {
        console.log("caught");
    });
    console.log("verified");
}
