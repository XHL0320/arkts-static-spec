/**
 * @id CCY_16_05_02_003_PASS_async_mutex_critical
 * @expect compile-pass
 * @section 16.5.2
 * @design AsyncMutex 保护临界区（§16.5.2 例）
 * @note 正向用例：验证 lock/unlock 间操作共享数据的完整模式编译通过
 */
class SharedState {
    value: string = "nothing";
}
let whatIsInTheBag: SharedState = new SharedState();
let mutex: AsyncMutex = new AsyncMutex();
function checkAndModify(data: SharedState, expected: string, updated: string): void {
    if (data.value != expected) {
        console.log("race!");
    }
    data.value = updated;
}
async function delay(): Promise<void> {
    return new Promise<void>((res, rej) => {
        setTimeout(res, 1, undefined);
    });
}
async function f(): Promise<void> {
    await mutex.lock();
    checkAndModify(whatIsInTheBag, "nothing", "paraglider");
    await delay();
    checkAndModify(whatIsInTheBag, "paraglider", "nothing");
    mutex.unlock();
}
async function g(): Promise<void> {
    await mutex.lock();
    checkAndModify(whatIsInTheBag, "nothing", "apple");
    await delay();
    checkAndModify(whatIsInTheBag, "apple", "nothing");
    mutex.unlock();
}
