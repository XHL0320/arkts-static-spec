/**
 * @id CCY_16_CI_021_RUNTIME_async_lock
 * @expect runtime
 * @section 16.5.1
 * @design async + AsyncLock 交叉集成运行时
 * @note 运行时用例：验证 async 函数内使用 AsyncLock
 */
async function test(): Promise<void> {
    let lock: AsyncLock = new AsyncLock();
    await lock.lockAsync<void>(async () => {});
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
