/**
 * @id CCY_16_05_01_002_PASS_async_lock_exclusive
 * @expect compile-pass
 * @section 16.5.1
 * @design AsyncLock EXCLUSIVE 模式
 * @note 正向用例：验证 AsyncLockMode.EXCLUSIVE 作为 lockAsync 第二个参数编译通过
 */
let lock: AsyncLock = new AsyncLock();
async function f(): Promise<void> {
    let p: Promise<void> = lock.lockAsync<void>(async () => {
        console.log("exclusive");
    }, AsyncLockMode.EXCLUSIVE);
    await p;
}
