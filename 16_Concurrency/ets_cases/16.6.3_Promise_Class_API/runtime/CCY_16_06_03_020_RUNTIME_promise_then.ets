/**
 * @id CCY_16_06_03_020_RUNTIME_promise_then
 * @expect runtime
 * @section 16.6.3
 * @design Promise.then 回调运行时
 * @note 运行时用例：验证 Promise resolve 后 then 回调执行
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    p.then((v: number) => {
        console.log("then:" + v);
    });
    console.log("verified");
}
