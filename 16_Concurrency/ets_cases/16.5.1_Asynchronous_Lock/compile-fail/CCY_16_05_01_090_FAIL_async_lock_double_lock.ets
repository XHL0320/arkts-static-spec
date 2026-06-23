/**
 * @id CCY_16_05_01_090_FAIL_async_lock_double_lock
 * @expect compile-fail
 * @section 16.5.1
 * @design 双重加锁尝试（嵌套 lockAsync 导致死锁风险）
 * @note 反向用例：在已持锁的 lambda 中再次对同一锁调用 lockAsync，编译器应报错
 */
let lock: AsyncLock = new AsyncLock();
async function f(): Promise<void> {
    let p1: Promise<void> = lock.lockAsync<void>(async () => {
        let p2: Promise<void> = lock.lockAsync<void>(async () => {
            console.log("nested");
        }, AsyncLockMode.EXCLUSIVE);
        await p2;
    }, AsyncLockMode.EXCLUSIVE);
    await p1;
}
