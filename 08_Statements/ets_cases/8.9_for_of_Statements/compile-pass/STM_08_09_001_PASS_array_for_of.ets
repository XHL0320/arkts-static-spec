/**
 * @id STM_08_09_001_PASS_array_for_of
 * @expect compile-pass
 * @section 8.9
 * @design 使用for-of遍历Array<T>，验证变量类型正确推断为T
 * @note for-of可以遍历Array<T>，元素类型推断为T，循环体内可正常使用元素值
 */
function testArrayForOf(): void {
    let arr: Array<int> = [1, 2, 3];
    let sum: int = 0;
    for (let x of arr) {
        sum += x;
    }
}
