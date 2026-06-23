/**
 * @id CCY_16_04_03_090_FAIL_EAWorker_wrong_ctor
 * @expect compile-fail
 * @section 16.4.3
 * @design EAWorker 构造参数类型错误
 * @note 反向用例：验证 EAWorker 构造参数类型错误应编译报错
 */
function main(): void {
    let w: EAWorker = new EAWorker(42);
}
