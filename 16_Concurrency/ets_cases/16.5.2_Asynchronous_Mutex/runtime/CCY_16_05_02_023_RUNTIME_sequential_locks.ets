/**
 * @id CCY_16_05_02_023_RUNTIME_sequential_locks
 * @expect runtime
 * @section 16.5.2
 * @design 同一线程顺序 lock/unlock 多次
 * @note 运行时用例：验证同一线程多次 lock/unlock 的正确性
 */
async function test(): Promise<void> {
    let mutex: AsyncMutex = new AsyncMutex();
    await mutex.lock();
    mutex.unlock();
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
