/**
 * @id CCY_16_05_04_090_FAIL_condvar_no_mutex
 * @expect compile-fail
 * @section 16.5.4
 * @design AsyncCondVar 缺少 AsyncMutex
 * @note 反向用例：验证 AsyncCondVar 使用错误方法应编译报错
 */
function main(): void {
    let cv: AsyncCondVar = new AsyncCondVar();
    cv.notifyOne();
}
