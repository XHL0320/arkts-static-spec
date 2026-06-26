/**
 * @id CCY_16_CI_003_PASS_launch_with_lock
 * @expect compile-pass
 * @section 16.5.1
 * @design launch 执行的 job 内使用 AsyncLock
 * @note 正向用例：验证 launch + AsyncLock 集成编译通过
 */
function main(): void {
    let lock: AsyncLock = new AsyncLock();
    let p1: Promise<void> = launch<void>((): void => {
        let p2: Promise<void> = lock.lockAsync<void>((): void => {});
    });
}
