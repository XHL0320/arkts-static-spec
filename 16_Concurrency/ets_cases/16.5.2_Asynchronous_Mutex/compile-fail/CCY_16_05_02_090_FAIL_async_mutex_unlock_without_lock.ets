/**
 * @id CCY_16_05_02_090_FAIL_async_mutex_unlock_without_lock
 * @expect compile-fail
 * @section 16.5.2
 * @design 未加锁直接 unlock
 * @note 反向用例：未先调用 lock() 直接调用 unlock()，编译器应报错
 */
let mutex: AsyncMutex = new AsyncMutex();
function f(): void {
    mutex.unlock();
}
