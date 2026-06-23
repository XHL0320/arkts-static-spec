/**
 * @id CCY_16_05_001_PASS_ASYNCLOCK_DECL
 * @expect compile-pass
 * @section 16.5
 * @design AsyncLock 声明和 lockAsync
 * @note 正向用例：验证 AsyncLock 创建和 lockAsync 编译通过（§16.5.1）
 */
let lock: AsyncLock = new AsyncLock();
async function f(): Promise<void> {
    let p: Promise<void> = lock.lockAsync<void>(async () => {
        console.log("locked");
    });
    await p;
}
function main(): void {
    console.log("ok");
}
