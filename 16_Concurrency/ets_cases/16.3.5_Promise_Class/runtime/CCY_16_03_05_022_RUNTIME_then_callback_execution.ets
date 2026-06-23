/**
 * @id CCY_16_03_05_022_RUNTIME_then_callback_execution
 * @expect runtime
 * @section 16.3.5
 * @design Promise.then 回调异步调度执行
 * @note 运行时用例：验证 then 回调在 Promise resolve 后执行
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
