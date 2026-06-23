/**
 * @id CCY_16_02_021_RUNTIME_LAUNCH_EXECUTION
 * @expect runtime
 * @section 16.2
 * @design launch API 运行时行为验证
 * @note 运行时用例：验证 launch 执行 lambda 返回 Promise
 */
function main(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("launch executed");
    });
    if (p == undefined) {
        throw new Error("assertion failed: launch should return Promise");
    }
    console.log("verified");
}
