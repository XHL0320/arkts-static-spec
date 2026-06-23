/**
 * @id CCY_16_05_01_009_PASS_deadlock_detection
 * @expect compile-pass
 * @section 16.5.1
 * @design 两个锁以一致顺序获取避免死锁
 * @note 正向用例：验证一致锁顺序场景编译通过
 */

let lockA: AsyncLock = new AsyncLock();
let lockB: AsyncLock = new AsyncLock();

async function jobOne(): Promise<void> {
    await lockA.lockAsync<void>(async () => {
        console.info('JobOne acquired lockA');
        await lockB.lockAsync<void>(async () => {
            console.info('JobOne acquired lockB');
        });
    });
}

async function jobTwo(): Promise<void> {
    await lockA.lockAsync<void>(async () => {
        console.info('JobTwo acquired lockA');
        await lockB.lockAsync<void>(async () => {
            console.info('JobTwo acquired lockB');
        });
    });
}

async function runDeadlockAvoidance(): Promise<void> {
    await Promise.all([jobOne(), jobTwo()]);
}

function main(): void {
    runDeadlockAvoidance();
}
