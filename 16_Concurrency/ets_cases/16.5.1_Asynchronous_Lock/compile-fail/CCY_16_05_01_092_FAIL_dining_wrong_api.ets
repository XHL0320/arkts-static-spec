/**
 * @id CCY_16_05_01_092_FAIL_dining_wrong_api
 * @expect compile-fail
 * @section 16.5.1
 * @design 哲学家就餐：错误使用 AsyncLock（调用不存在的方法）
 * @note 反向用例：验证 AsyncLock 对象调用不存在方法应编译报错
 */
let lock: AsyncLock = new AsyncLock();
function main(): void {
    lock.wait();
}
