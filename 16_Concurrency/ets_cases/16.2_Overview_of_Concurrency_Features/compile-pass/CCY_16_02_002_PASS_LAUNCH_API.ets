/**
 * @id CCY_16_02_002_PASS_LAUNCH_API
 * @expect compile-pass
 * @section 16.2
 * @design 并行执行 API：launch 基本用法
 * @note 正向用例：验证 launch API 编译通过
 */
function main(): void {
    launch<void>((): void => {
        console.log("parallel task");
    });
}
