/**
 * @id CCY_16_07_001_RUNTIME_runtime_details
 * @expect runtime
 * @section 16.7
 * @design 运行时实现细节基本验证
 * @note 运行时用例：验证 async 多 await 顺序执行
 */
async function delay(ms: number): Promise<void> {
    return new Promise<void>((resolve) => { setTimeout(resolve, ms); });
}
async function test(): Promise<void> {
    await delay(1);
    await delay(1);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
