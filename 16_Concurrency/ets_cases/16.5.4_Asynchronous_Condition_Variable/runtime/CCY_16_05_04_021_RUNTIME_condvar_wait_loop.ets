/**
 * @id CCY_16_05_04_021_RUNTIME_condvar_wait_loop
 * @expect runtime
 * @section 16.5.4
 * @design AsyncCondVar while 循环等待
 * @note 运行时用例：验证 while(condition) { await cv.wait(m) } 执行
 */
async function waiter(m: AsyncMutex, cv: AsyncCondVar, flag: boolean): Promise<void> {
    await m.lock();
    while (flag == false) {
        await cv.wait(m);
    }
    m.unlock();
}
async function notifier(m: AsyncMutex, cv: AsyncCondVar): Promise<void> {
    await m.lock();
    cv.notifyOne(m);
    m.unlock();
}
async function test(): Promise<void> {
    let m: AsyncMutex = new AsyncMutex();
    let cv: AsyncCondVar = new AsyncCondVar();
    notifier(m, cv);
    await waiter(m, cv, false);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
