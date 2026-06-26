/**
 * @id CCY_16_05_03_022_RUNTIME_rwlock_read_then_write
 * @expect runtime
 * @section 16.5.3
 * @design AsyncRWLock 先读后写
 * @note 运行时用例：验证 AsyncRWLock 先获取读锁再获取写锁
 */
async function test(): Promise<void> {
    let rw: concurrency.stackless.AsyncReadWriteLock = new concurrency.stackless.AsyncReadWriteLock();
    let r = rw.readLock();
    await r.lock();
    r.unlock();
    let w = rw.writeLock();
    await w.lock();
    w.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
