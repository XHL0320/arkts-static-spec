/**
 * @id CCY_16_05_05_020_GAP_atomic_int
 * @expect gap
 * @section 16.5.5
 * @design AtomicInt 原子操作运行时
 * @note 运行时用例：验证 AtomicInt 的 increment/get 操作正常执行
 */
function main(): void {
    let ai: AtomicInt = new AtomicInt(0);
    ai.increment();
    let v: number = ai.get();
    if (v != 1) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
