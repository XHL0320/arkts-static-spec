/**
 * @id CCY_16_05_01_010_PASS_race_condition_sync
 * @expect compile-pass
 * @section 16.5.1
 * @design 共享计数器同步访问避免竞态条件
 * @note 正向用例：验证 AsyncLock 同步共享计数器编译通过
 */

let safeCounter: number = 0;
let lock: AsyncLock = new AsyncLock();

async function safeIncrement(): Promise<void> {
    await lock.lockAsync<void>(async () => {
        let tmp: number = safeCounter;
        safeCounter = tmp + 1;
        console.info('Counter: ' + safeCounter);
    });
}

async function runSafeIncrements(): Promise<void> {
    await Promise.all([
        safeIncrement(),
        safeIncrement(),
        safeIncrement()
    ]);
    console.info('Final counter: ' + safeCounter);
}

function main(): void {
    runSafeIncrements();
}
