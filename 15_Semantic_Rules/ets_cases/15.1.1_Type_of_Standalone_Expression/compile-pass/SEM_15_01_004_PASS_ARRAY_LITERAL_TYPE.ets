/**
 * @id SEM_15_01_004
 * @expect compile-pass
 * @section 15.1.1
 * @design 验证数组字面量类型从元素推断
 * @note 正向用例：[1, 2, 3] 应推断为 int[] 类型
 */
function main(): void {
    let arr = [1, 2, 3];    // inferred as int[]
    let first: int = arr[0];
    console.log(`first=${first}`);
}
