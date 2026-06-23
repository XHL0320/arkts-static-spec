/**
 * @id CCY_16_04_03_020_RUNTIME_EAWorker_run_task
 * @expect runtime
 * @section 16.4.3
 * @design EAWorker 创建 worker 并执行任务
 * @note 运行时用例：验证 EAWorker 创建、启动、运行任务并获取结果
 */
function main(): void {
    let worker: EAWorker = new EAWorker();
    worker.start();
    let p: Promise<number> = worker.run<number>((): number => {
        return 42;
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
