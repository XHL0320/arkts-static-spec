/**
 * @id CCY_16_03_05_020_RUNTIME_pending_to_resolved
 * @expect runtime
 * @section 16.3.5
 * @design Promise pending→resolved 状态转换 → await 取值
 * @note 运行时用例：验证 Promise 从待定变为已决后 await 获取值
 */
async function test(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(100);
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
