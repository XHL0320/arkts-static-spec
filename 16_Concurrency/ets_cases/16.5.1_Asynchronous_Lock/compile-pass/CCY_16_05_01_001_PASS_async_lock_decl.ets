/**
 * @id CCY_16_05_01_001_PASS_async_lock_decl
 * @expect compile-pass
 * @section 16.5.1
 * @design AsyncLock 声明和锁请求
 * @note 正向用例：验证 AsyncLock 创建和 lockAsync 编译通过
 */
let lock: AsyncLock = new AsyncLock();
async function f(): Promise<void> {
    let p: Promise<void> = lock.lockAsync<void>(async () => {
        console.log("locked");
    });
    await p;
}
