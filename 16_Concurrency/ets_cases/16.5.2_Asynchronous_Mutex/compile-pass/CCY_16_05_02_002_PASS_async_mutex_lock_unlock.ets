/**
 * @id CCY_16_05_02_002_PASS_async_mutex_lock_unlock
 * @expect compile-pass
 * @section 16.5.2
 * @design AsyncMutex lock()/unlock() 模式
 * @note 正向用例：验证 AsyncMutex 的 lock() 和 unlock() 调用编译通过
 */
let mutex: AsyncMutex = new AsyncMutex();
async function f(): Promise<void> {
    await mutex.lock();
    console.log("critical section");
    mutex.unlock();
}
