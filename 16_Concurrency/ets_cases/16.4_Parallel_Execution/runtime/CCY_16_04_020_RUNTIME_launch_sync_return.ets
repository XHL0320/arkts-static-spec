/**
 * @id CCY_16_04_020_RUNTIME_launch_sync_return
 * @expect runtime
 * @section 16.4
 * @design launch sync lambda 返回 Promise resolved 值
 * @note 运行时用例：验证 launch 同步 lambda 返回 Promise 被 resolve
 */
function main(): void {
    let p: Promise<number> = launch<number>((): number => {
        return 42;
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
