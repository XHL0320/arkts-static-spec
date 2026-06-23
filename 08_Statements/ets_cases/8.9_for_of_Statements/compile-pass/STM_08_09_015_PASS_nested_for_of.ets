/**
 * @id STM_08_09_015_PASS_nested_for_of
 * @expect compile-pass
 * @section 8.9
 * @design 嵌套for-of循环，外层遍历Array<Array<int>>，内层遍历内层Array<int>，验证类型推断正确
 * @note 双层for-of嵌套，外层元素类型推断为Array<int>，内层元素类型推断为int
 */
function testNestedForOf(): void {
    let matrix: Array<Array<int>> = [[1, 2], [3, 4], [5, 6]];
    let sum: int = 0;
    for (let row of matrix) {
        for (let val of row) {
            sum += val;
        }
    }
}
