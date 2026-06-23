/**
 * @id CCY_16_05_01_024
 * @expect runtime
 * @section 16.5.1
 * @design launch + AsyncLock 交叉集成运行时
 * @note 运行时用例：验证 launch job 内使用 AsyncLock
 */
function main(): void {
    let lock: AsyncLock = new AsyncLock();
    let p1: Promise<void> = launch<void>((): void => {
        let p2: Promise<void> = lock.lockAsync<void>((): void => {});
    });
    if (p1 == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
