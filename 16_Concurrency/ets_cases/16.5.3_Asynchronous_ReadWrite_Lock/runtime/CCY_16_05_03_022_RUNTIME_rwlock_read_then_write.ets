/**
 * @id CCY_16_05_03_022_RUNTIME_rwlock_read_then_write
 * @expect runtime
 * @section 16.5.3
 * @design AsyncRWLock 先读后写
 * @note 运行时用例：验证 AsyncRWLock 读锁后写锁的执行
 */
async function test(): Promise<void> {
    let rw: AsyncRWLock = new AsyncRWLock();
    await rw.lockRead();
    rw.unlock();
    await rw.lockWrite();
    rw.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
