/**
 * @id CCY_16_05_01_090_GAP_async_lock_double_lock
 * @expect compile-pass
 * @section 16.5.1
 * @design 双重加锁尝试（嵌套 lockAsync 导致死锁风险）
 * @note Spec §16.5.2(AsyncMutex) 明确说明：double locking 避免是开发者责任，非编译时错误。
 *       原设为 compile-fail，经 Spec 核实改为 compile-pass。
 *       "The avoidance of double locking and deadlocks is the developer's responsibility."
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
