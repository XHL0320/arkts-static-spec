/**
 * @id CCY_16_05_01_021_RUNTIME_lock_shared
 * @expect runtime
 * @section 16.5.1
 * @design AsyncLock SHARED 模式运行时
 * @note 运行时用例：验证 AsyncLock SHARED 模式 lockAsync 正常执行
 */
async function test(): Promise<void> {
    let lock: AsyncLock = new AsyncLock();
    await lock.lockAsync<void>(async () => {
        console.log("shared");
    }, AsyncLockMode.SHARED);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
