/**
 * @id CCY_16_05_03_090_FAIL_rwlock_wrong_api
 * @expect compile-fail
 * @section 16.5.3
 * @design AsyncRWLock 错误方法调用
 * @note 反向用例：验证 AsyncRWLock 调用不存在方法应编译报错
 */
function main(): void {
    let rw: AsyncRWLock = new AsyncRWLock();
    rw.someMethod();
}
