/**
 * @id CCY_16_CI_002_PASS_async_sync_lock
 * @expect compile-pass
 * @section 16.5.1
 * @design async 函数内使用 AsyncLock 同步
 * @note 正向用例：验证 async + AsyncLock 集成编译通过
 */
function main(): void {
    let lock: AsyncLock = new AsyncLock();
    let p: Promise<void> = lock.lockAsync<void>((): void => {});
}
