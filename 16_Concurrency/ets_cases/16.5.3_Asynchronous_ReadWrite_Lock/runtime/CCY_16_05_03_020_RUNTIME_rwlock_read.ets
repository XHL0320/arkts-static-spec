/**
 * @id CCY_16_05_03_020_RUNTIME_rwlock_read
 * @expect runtime
 * @section 16.5.3
 * @design AsyncRWLock 读锁执行
 * @note 运行时用例：验证 AsyncRWLock readLock/lock/unlock 正常执行
 */
async function test(): Promise<void> {
    let rw: concurrency.stackless.AsyncReadWriteLock = new concurrency.stackless.AsyncReadWriteLock();
    let r = rw.readLock();
    await r.lock();
    console.log("reading");
    r.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
