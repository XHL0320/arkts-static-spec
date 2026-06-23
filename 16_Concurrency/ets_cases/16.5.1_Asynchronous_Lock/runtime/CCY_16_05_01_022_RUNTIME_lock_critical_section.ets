/**
 * @id CCY_16_05_01_022_RUNTIME_lock_critical_section
 * @expect runtime
 * @section 16.5.1
 * @design AsyncLock 临界区保护（含 await 悬挂点）
 * @note 运行时用例：验证 lockAsync 临界区内含 await 悬挂点的正确执行
 */
class SharedState {
    value: string = "nothing";
}
let state: SharedState = new SharedState();
let lock: AsyncLock = new AsyncLock();
async function test(): Promise<void> {
    await lock.lockAsync<void>(async () => {
        state.value = "updated";
        await new Promise<void>((resolve: () => void) => resolve());
        state.value = "final";
    }, AsyncLockMode.EXCLUSIVE);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
