/**
 * @id CCY_16_04_01_001_PASS_parallel_api_overview
 * @expect compile-pass
 * @section 16.4.1
 * @design 并行执行 API 总览：launch API 基本用法
 * @note 正向用例：验证 launch API 作为主要并行执行 API 编译通过
 *       EAWorker API 和 Taskpool API 为 stdlib 依赖，见 16.4.3、16.4.4
 */
function main(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("parallel execution");
    });
}
