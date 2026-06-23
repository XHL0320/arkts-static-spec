/**
 * @id SEM_15_12_010_FAIL_ERASURE_LIMIT
 * @expect compile-fail
 * @section 15.12
 * @design 验证 FixedArray 泛型擦除限制：擦除后类型不可作 FixedArray 类型参数
 * @note 反向用例：类型擦除后不可用于 FixedArray 实例化
 */
class Container<T> { val: T | undefined; }
function main(): void {
    let arr: FixedArray<Container<int>> = new FixedArray<Container<int>>(3);
}
