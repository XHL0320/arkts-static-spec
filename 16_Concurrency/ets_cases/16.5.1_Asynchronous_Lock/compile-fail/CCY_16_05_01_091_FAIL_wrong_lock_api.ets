/**
 * @id CCY_16_05_01_091_FAIL_wrong_lock_api
 * @expect compile-fail
 * @section 16.5.1
 * @design 经典并发场景错误使用 AsyncLock API
 * @note 反向用例：验证 AsyncLock 不支持 lock()/unlock() 方法应编译报错
 */
let lock: AsyncLock = new AsyncLock();
function main(): void {
    lock.lock();
    lock.unlock();
}
