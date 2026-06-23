/**
 * @id CCY_16_02_003_PASS_SYNC_LOCK
 * @expect compile-pass
 * @section 16.2
 * @design 同步 API：AsyncLock 基本用法
 * @note 正向用例：验证 AsyncLock 声明与 lockAsync 编译通过
 */
function main(): void {
    let lock: AsyncLock = new AsyncLock();
    let p: Promise<void> = lock.lockAsync((): void => {});
}
