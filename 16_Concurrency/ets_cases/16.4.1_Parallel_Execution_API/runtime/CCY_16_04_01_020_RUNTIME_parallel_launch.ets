/**
 * @id CCY_16_04_01_020_RUNTIME_parallel_launch
 * @expect runtime
 * @section 16.4.1
 * @design launch API 运行时执行验证
 * @note 运行时用例：验证 launch 作为主要并行执行 API 正常执行
 */
function main(): void {
    let p: Promise<void> = launch<void>((): void => {
        console.log("parallel execution");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
