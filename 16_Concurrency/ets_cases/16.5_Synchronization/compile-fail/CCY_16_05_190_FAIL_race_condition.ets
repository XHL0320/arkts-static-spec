/**
 * @id CCY_16_05_190_FAIL_race_condition
 * @expect compile-fail
 * @section 16.5
 * @design 演示非同步共享计数器访问，编译器检测竞态条件
 * @note 反向用例：验证 AsyncLock 不支持 lock()/unlock() 方法，应编译报错
 */

let raceCounter: number = 0;

async function unsafeIncrement(): Promise<void> {
    let tmp: number = raceCounter;
    raceCounter = tmp + 1;
}

async function runRaceCondition(): Promise<void> {
    await Promise.all([
        unsafeIncrement(),
        unsafeIncrement(),
        unsafeIncrement()
    ]);
}

runRaceCondition();
