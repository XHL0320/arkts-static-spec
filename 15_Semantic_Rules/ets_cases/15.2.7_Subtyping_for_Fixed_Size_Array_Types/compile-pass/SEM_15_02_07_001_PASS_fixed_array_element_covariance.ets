/**
 * @id SEM_15_02_07_001_PASS_fixed_array_element_covariance
 * @expect compile-pass
 * @section 15.2.7
 * @design 验证 FixedArray 元素协变：FixedArray<Derived> 可作为 FixedArray<Base>
 * @note 正向用例：FixedArray 是内置特殊类型，设计为协变（类似 Java 数组）
 */
class Base { value: int = 0; }
class Derived extends Base { extra: int = 0; }
function acceptBase(arr: FixedArray<Base>): void {
    console.log(`${arr[0].value}`);
}
function main(): void {
    let derivedArr: FixedArray<Derived> = new FixedArray<Derived>(3);
    acceptBase(derivedArr);
}
