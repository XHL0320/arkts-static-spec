/**
 * @id CCY_16_05_05_090_FAIL_atomic_wrong_type
 * @expect compile-fail
 * @section 16.5.5
 * @design 原子操作类型错误
 * @note 反向用例：验证原子操作类型不匹配应编译报错
 */
function main(): void {
    let x: int = 0;
    x.compareAndSet(0, 1);
}
