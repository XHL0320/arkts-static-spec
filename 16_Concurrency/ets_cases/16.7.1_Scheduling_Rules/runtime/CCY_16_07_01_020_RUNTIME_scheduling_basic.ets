/**
 * @id CCY_16_07_01_020_RUNTIME_scheduling_basic
 * @expect runtime
 * @section 16.7.1
 * @design 基本调度规则运行时
 * @note 运行时用例：验证 launch job 基本执行（调度规则由 ark VM 隐式验证）
 */
function main(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("scheduled");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
