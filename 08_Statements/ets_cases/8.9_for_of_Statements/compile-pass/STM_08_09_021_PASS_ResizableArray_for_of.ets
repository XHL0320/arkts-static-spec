/**
 * @id STM_08_09_021_PASS_ResizableArray_for_of
 * @expect compile-pass
 * @section 8.9
 * @design 使用for-of遍历ResizableArray<T>（T[]语法），验证变量类型正确推断为T
 * @note for-of可以遍历ResizableArray<T>，元素类型推断为T，ResizableArray属于可迭代数组类型
 */
function testResizableArrayForOf(): void {
    let arr: int[] = [1, 2, 3];
    let sum: int = 0;
    for (let x of arr) {
        sum += x;
    }
}
