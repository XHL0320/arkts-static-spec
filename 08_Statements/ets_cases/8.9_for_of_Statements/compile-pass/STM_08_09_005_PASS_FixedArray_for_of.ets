/**
 * @id STM_08_09_005_PASS_FixedArray_for_of
 * @expect compile-pass
 * @section 8.9
 * @design 使用for-of遍历FixedArray<T>，验证变量类型正确推断为T
 * @note for-of可以遍历FixedArray<T>，元素类型推断为T，FixedArray属于可迭代数组类型
 */
function testFixedArrayForOf(): void {
    let fixedArr: FixedArray<int> = new FixedArray<int>(3);
    fixedArr[0] = 10;
    fixedArr[1] = 20;
    fixedArr[2] = 30;
    let sum: int = 0;
    for (let x of fixedArr) {
        sum += x;
    }
}
