/**
 * @id CCY_16_04_023_RUNTIME_launch_non_async_context
 * @expect runtime
 * @section 16.4
 * @design launch 在非 async 函数中（§16.4.2）
 * @note 运行时用例：验证 launch 在非 async 上下文中正常执行
 */
function h(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("non-async launch");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
}
function main(): void {
    h();
    console.log("verified");
}
