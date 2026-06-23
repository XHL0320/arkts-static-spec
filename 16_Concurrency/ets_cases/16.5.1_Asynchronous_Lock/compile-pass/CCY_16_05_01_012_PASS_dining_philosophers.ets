/**
 * @id CCY_16_05_01_012_PASS_dining_philosophers
 * @expect compile-pass
 * @section 16.5.1
 * @design 哲学家就餐模型：两个哲学家使用两个 AsyncLock
 * @note 正向用例：验证 AsyncLock 在哲学家就餐场景编译通过
 */

let chopstickA: AsyncLock = new AsyncLock();
let chopstickB: AsyncLock = new AsyncLock();

async function philosopherOne(): Promise<void> {
    await chopstickA.lockAsync<void>(async () => {
        console.info('PhilosopherOne picked up chopstickA');
        await chopstickB.lockAsync<void>(async () => {
            console.info('PhilosopherOne picked up chopstickB, eating');
        });
    });
}

async function philosopherTwo(): Promise<void> {
    await chopstickA.lockAsync<void>(async () => {
        console.info('PhilosopherTwo picked up chopstickA');
        await chopstickB.lockAsync<void>(async () => {
            console.info('PhilosopherTwo picked up chopstickB, eating');
        });
    });
}

async function runDining(): Promise<void> {
    await Promise.all([philosopherOne(), philosopherTwo()]);
}

function main(): void {
    runDining();
}
