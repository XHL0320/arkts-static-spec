/**
 * @id CCY_16_05_03_001_PASS_rwlock_decl
 * @expect compile-pass
 * @section 16.5.3
 * @design AsyncRWLock 声明
 * @note 正向用例：验证 AsyncRWLock 创建和读写锁声明编译通过。
 *       用 readLock()/writeLock() guard + lock()/unlock() 匹配 stdlib API。
 */
let rwlock: concurrency.stackless.AsyncReadWriteLock = new concurrency.stackless.AsyncReadWriteLock();
async function reader(): Promise<void> {
    let r = rwlock.readLock();
    await r.lock();
    console.log("reading");
    r.unlock();
}
async function writer(): Promise<void> {
    let w = rwlock.writeLock();
    await w.lock();
    console.log("writing");
    w.unlock();
}
