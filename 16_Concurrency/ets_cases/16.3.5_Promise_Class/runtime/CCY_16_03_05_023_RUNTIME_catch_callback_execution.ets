/**
 * @id CCY_16_03_05_023_RUNTIME_catch_callback_execution
 * @expect runtime
 * @section 16.3.5
 * @design Promise.catch 回调在 Promise reject 后执行
 * @note 运行时用例：验证 catch 回调在 Promise reject 后执行
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("fail"));
    });
    p.catch((e: Error) => {
        console.log("caught:" + e.message);
    });
    console.log("verified");
}
