/**
 * @id SEM_15_12_032_FAIL_PROMISE_FIXEDARRAY
 * @expect compile-fail
 * @section 15.12
 * @design 验证类型擦除后类型不可用于 FixedArray 类型参数
 * @note 反向用例：编译器正确拒绝 ESE461884，与 Spec 一致 ✅
 */
function main(): void {
    let arr: FixedArray<Promise<int>> = new FixedArray<Promise<int>>(3);
}
