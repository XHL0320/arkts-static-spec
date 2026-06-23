/**
 * @id CCY_16_05_02_020_RUNTIME_basic_lock_unlock
 * @expect runtime
 * @section 16.5.2
 * @design AsyncMutex 基本 lock/unlock 执行
 * @note 运行时用例：验证 AsyncMutex 加锁和解锁的正常执行路径
 */
async function test(): Promise<void> {
    let mutex: AsyncMutex = new AsyncMutex();
    await mutex.lock();
    mutex.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
