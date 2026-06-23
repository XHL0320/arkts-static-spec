/**
 * @id CCY_16_05_03_020_RUNTIME_rwlock_read
 * @expect runtime
 * @section 16.5.3
 * @design AsyncRWLock 读锁执行
 * @note 运行时用例：验证 AsyncRWLock lockRead/unlock 正常执行
 */
async function test(): Promise<void> {
    let rw: AsyncRWLock = new AsyncRWLock();
    await rw.lockRead();
    console.log("reading");
    rw.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
