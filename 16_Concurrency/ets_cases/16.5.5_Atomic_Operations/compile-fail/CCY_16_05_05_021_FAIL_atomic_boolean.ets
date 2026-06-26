/**
 * @id CCY_16_05_05_021_FAIL_atomic_boolean
 * @expect compile-fail
 * @section 16.5.5
 * @design AtomicBoolean 原子操作运行时
 * @note 运行时用例：验证 AtomicBoolean 的 set/get 操作正常执行
 */
function main(): void {
    let ab: AtomicBoolean = new AtomicBoolean(false);
    ab.set(true);
    let v: boolean = ab.get();
    if (v != true) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
