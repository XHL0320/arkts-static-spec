/**
 * @id CCY_16_05_03_001_PASS_rwlock_decl
 * @expect compile-pass
 * @section 16.5.3
 * @design AsyncRWLock 声明
 * @note 正向用例：验证 AsyncRWLock 创建和读写锁声明编译通过
 */
let rwlock: AsyncRWLock = new AsyncRWLock();
async function reader(): Promise<void> {
    await rwlock.lockRead();
    console.log("reading");
    rwlock.unlock();
}
async function writer(): Promise<void> {
    await rwlock.lockWrite();
    console.log("writing");
    rwlock.unlock();
}
