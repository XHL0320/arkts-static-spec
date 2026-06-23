/**
 * @id STM_08_06_004_PASS_BasicForOf
 * @expect compile-pass
 * @section 8.6
 * @design 基本for-of循环：遍历数组元素，正确处理每个元素
 * @note 验证for-of循环基本语法，遍历int数组
 */
function testBasicForOf(): void {
    let arr: int[] = [1, 2, 3];
    let sum: int = 0;
    for (let x of arr) {
        sum += x;
    }
    let empty: int[] = [];
    let count: int = 0;
    for (let y of empty) {
        count++;
    }
}
