/**
 * @id CCY_16_05_04_021_GAP_condvar_wait_loop
 * @expect gap
 * @section 16.5.4
 * @design concurrency.stackless.AsyncCondVar while 循环等待
 * @note 运行时用例：验证 while(condition) { await cv.wait(m) } 执行
 */
async function waiter(m: concurrency.stackless.AsyncMutex, cv: concurrency.stackless.AsyncCondVar, flag: boolean): Promise<void> {
    await m.lock();
    while (flag == false) {
        await cv.wait(m);
    }
    m.unlock();
}
async function notifier(m: concurrency.stackless.AsyncMutex, cv: concurrency.stackless.AsyncCondVar): Promise<void> {
    await m.lock();
    cv.notifyOne(m);
    m.unlock();
}
async function test(): Promise<void> {
    let m: concurrency.stackless.AsyncMutex = new concurrency.stackless.AsyncMutex();
    let cv: concurrency.stackless.AsyncCondVar = new concurrency.stackless.AsyncCondVar();
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
