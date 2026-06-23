/**
 * @id SEM_15_02_07_004_PASS_fixed_array_runtime_store_check
 * @expect compile-pass
 * @section 15.2.7
 * @design FixedArray 运行时数组存储检查函数编译通过，运行时可能抛出 ArrayStoreError
 * @note 来自规范 15.2.7 例：foo(da) 编译通过但运行时可能 ArrayStoreError
 */
class C {}
class D extends C {}
function foo(ca: FixedArray<C>): void {
    ca[0] = new C()
}
function main(): void {
    let da: FixedArray<D> = [new D()]
    foo(da)
}
