/**
 * @id CCY_16_05_04_002_PASS_condvar_notify
 * @expect compile-pass
 * @section 16.5.4
 * @design notifyOne + wait 模式（§16.5.4 例）
 * @note 正向用例：验证 notifyOne 通知和 wait 等待的基本用法编译通过
 */
let m: AsyncMutex = new AsyncMutex();
let cv: AsyncCondVar = new AsyncCondVar();
let flag: boolean = false;
async function notifier(): Promise<void> {
    await m.lock();
    flag = true;
    cv.notifyOne(m);
    m.unlock();
}
async function waiter(): Promise<void> {
    await m.lock();
    if (flag == false) {
        await cv.wait(m);
    }
    m.unlock();
}
