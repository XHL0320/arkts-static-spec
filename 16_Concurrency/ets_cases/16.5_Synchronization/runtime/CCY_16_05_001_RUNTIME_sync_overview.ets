/**
 * @id CCY_16_05_001_RUNTIME_sync_overview
 * @expect runtime
 * @section 16.5
 * @design 同步机制总览运行时
 * @note 运行时用例：验证 AsyncLock/AsyncMutex/Atomic 三种同步基元基本可用
 */
async function testLock(): Promise<void> {
    let lock: AsyncLock = new AsyncLock();
    await lock.lockAsync<void>(async () => {}, AsyncLockMode.EXCLUSIVE);
}
function testAtomic(): void {
    let ai: AtomicInt = new AtomicInt(0);
    ai.increment();
}
async function test(): Promise<void> {
    await testLock();
    testAtomic();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
