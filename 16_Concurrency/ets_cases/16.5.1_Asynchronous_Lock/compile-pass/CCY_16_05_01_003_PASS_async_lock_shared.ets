/**
 * @id CCY_16_05_01_003_PASS_async_lock_shared
 * @expect compile-pass
 * @section 16.5.1
 * @design AsyncLock SHARED 模式
 * @note 正向用例：验证 AsyncLockMode.SHARED 作为 lockAsync 第二个参数编译通过
 */
let lock: AsyncLock = new AsyncLock();
async function f(): Promise<void> {
    let p: Promise<void> = lock.lockAsync<void>(async () => {
        console.log("shared");
    }, AsyncLockMode.SHARED);
    await p;
}
