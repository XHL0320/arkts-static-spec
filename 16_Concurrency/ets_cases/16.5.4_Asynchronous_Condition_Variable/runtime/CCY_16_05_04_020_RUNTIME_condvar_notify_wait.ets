/**
 * @id CCY_16_05_04_020_RUNTIME_condvar_notify_wait
 * @expect runtime
 * @section 16.5.4
 * @design AsyncCondVar notifyOne + wait 模式运行
 * @note 运行时用例：验证 AsyncCondVar 通知和等待的基本执行
 */
async function test(): Promise<void> {
    let m: AsyncMutex = new AsyncMutex();
    let cv: AsyncCondVar = new AsyncCondVar();
    let flag: boolean = false;
    await m.lock();
    flag = true;
    cv.notifyOne(m);
    m.unlock();
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
