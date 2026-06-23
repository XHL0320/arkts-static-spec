/**
 * @id CCY_16_06_04_020_RUNTIME_reject_handled
 * @expect runtime
 * @section 16.6.4
 * @design Promise reject 通过 catch 处理
 * @note 运行时用例：验证 rejected Promise 被 catch 捕获
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("fail"));
    });
    p.catch((e: Error) => {
        console.log("handled");
    });
    console.log("verified");
}
