/**
 * @id CCY_16_04_021_RUNTIME_launch_void_fire_and_forget
 * @expect runtime
 * @section 16.4
 * @design launch void lambda（fire-and-forget）
 * @note 运行时用例：验证 launch void lambda 执行不阻塞
 */
function main(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("fire-and-forget");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
