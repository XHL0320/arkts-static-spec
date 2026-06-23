/**
 * @id CCY_16_05_05_001_PASS_atomic_decl
 * @expect compile-pass
 * @section 16.5.5
 * @design Atomic 类声明和基本操作
 * @note 正向用例：验证 AtomicInteger 和 AtomicBoolean 声明及操作编译通过
 */
let atomicInt: AtomicInteger = new AtomicInteger(0);
let atomicBool: AtomicBoolean = new AtomicBoolean(false);
function f(): void {
    atomicInt.increment();
    atomicBool.set(true);
    let val: number = atomicInt.get();
    console.log(val.toString());
}
