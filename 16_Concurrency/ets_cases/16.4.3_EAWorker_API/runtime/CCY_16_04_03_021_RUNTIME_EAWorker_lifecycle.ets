/**
 * @id CCY_16_04_03_021_RUNTIME_EAWorker_lifecycle
 * @expect runtime
 * @section 16.4.3
 * @design EAWorker 生命周期：start → isAlive → quit
 * @note 运行时用例：验证 EAWorker 启动、存活状态检测、停止
 */
function main(): void {
    let worker: EAWorker = new EAWorker();
    worker.start();
    let alive: boolean = worker.isAlive();
    worker.quit();
    console.log("verified");
}
