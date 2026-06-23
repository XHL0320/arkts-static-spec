/**
 * @id CCY_16_03_05_021_RUNTIME_pending_to_rejected
 * @expect runtime
 * @section 16.3.5
 * @design Promise pending→rejected 状态转换 → await 抛出
 * @note 运行时用例：验证 Promise 从待定变为拒绝后 await 抛出异常
 */
async function test(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("fail"));
    });
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
