/**
 * @id CCY_16_04_03_091_FAIL_EAWorker_run_wrong_type
 * @expect compile-fail
 * @section 16.4.3
 * @design EAWorker.run 类型参数与返回值不匹配
 * @note 反向用例：验证 EAWorker.run 类型参数与 lambda 返回类型不匹配编译报错
 */
function main(): void {
    let worker: EAWorker = new EAWorker();
    worker.start();
    let p: Promise<string> = worker.run<number>((): string => "hello");
}
