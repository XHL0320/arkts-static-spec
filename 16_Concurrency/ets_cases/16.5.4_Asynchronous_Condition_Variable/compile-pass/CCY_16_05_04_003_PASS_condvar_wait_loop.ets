/**
 * @id CCY_16_05_04_003_PASS_condvar_wait_loop
 * @expect compile-pass
 * @section 16.5.4
 * @design while 循环等待条件变量
 * @note 正向用例：验证 while(condition) { await cv.wait(m); } 模式编译通过
 */
let m: AsyncMutex = new AsyncMutex();
let cv: AsyncCondVar = new AsyncCondVar();
let flag: boolean = false;
async function waiter(): Promise<void> {
    await m.lock();
    while (flag == false) {
        await cv.wait(m);
    }
    m.unlock();
}
async function notifier(): Promise<void> {
    await m.lock();
    flag = true;
    cv.notifyOne(m);
    m.unlock();
}
