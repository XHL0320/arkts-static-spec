/**
 * @id CCY_16_05_02_022_RUNTIME_unlock_without_lock_error
 * @expect runtime
 * @section 16.5.2
 * @design 未加锁直接 unlock 运行时抛 IllegalLockStateError
 * @note 运行时用例：验证 unlock 未加锁时抛出运行时异常
 */
function main(): void {
    let mutex: concurrency.stackless.AsyncMutex = new concurrency.stackless.AsyncMutex();
    try {
        mutex.unlock();
        throw new Error("assertion failed: expected IllegalLockStateError");
    } catch (e) {
        console.log("verified");
    }
}
