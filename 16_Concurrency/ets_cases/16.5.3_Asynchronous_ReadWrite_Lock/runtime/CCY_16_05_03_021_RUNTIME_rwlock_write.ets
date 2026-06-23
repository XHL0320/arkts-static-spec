/**
 * @id CCY_16_05_03_021_RUNTIME_rwlock_write
 * @expect runtime
 * @section 16.5.3
 * @design AsyncRWLock 写锁执行
 * @note 运行时用例：验证 AsyncRWLock lockWrite/unlock 正常执行
 */
async function test(): Promise<void> {
    let rw: AsyncRWLock = new AsyncRWLock();
    await rw.lockWrite();
    console.log("writing");
    rw.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
