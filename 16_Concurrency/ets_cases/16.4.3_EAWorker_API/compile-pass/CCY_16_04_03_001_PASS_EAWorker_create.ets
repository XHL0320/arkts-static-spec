/**
 * @id CCY_16_04_03_001_PASS_EAWorker_create
 * @expect compile-pass
 * @section 16.4.3
 * @design EAWorker 创建和基本方法调用
 * @note 正向用例：验证 EAWorker 构造、start、run、quit 方法通过编译
 */
function main(): void {
    let worker: EAWorker = new EAWorker();
    worker.start();
    worker.isAlive();
    worker.run<number>((): number => 42);
    worker.quit();
}
