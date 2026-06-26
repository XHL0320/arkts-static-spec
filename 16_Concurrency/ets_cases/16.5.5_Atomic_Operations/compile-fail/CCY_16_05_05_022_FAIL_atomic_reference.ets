/**
 * @id CCY_16_05_05_022_FAIL_atomic_reference
 * @expect compile-fail
 * @section 16.5.5
 * @design AtomicReference 原子操作运行时
 * @note 运行时用例：验证 AtomicReference 的 set/get 操作正常执行
 */
function main(): void {
    let ref: AtomicReference<number> = new AtomicReference<number>(0);
    ref.set(42);
    let v: number = ref.get();
    if (v != 42) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
