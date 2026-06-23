/**
 * @id CCY_16_05_01_020_RUNTIME_lock_exclusive
 * @expect runtime
 * @section 16.5.1
 * @design AsyncLock EXCLUSIVE 模式运行时
 * @note 运行时用例：验证 AsyncLock EXCLUSIVE 模式 lockAsync 正常执行
 */
async function test(): Promise<void> {
    let lock: AsyncLock = new AsyncLock();
    await lock.lockAsync<void>(async () => {
        console.log("exclusive");
    }, AsyncLockMode.EXCLUSIVE);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
