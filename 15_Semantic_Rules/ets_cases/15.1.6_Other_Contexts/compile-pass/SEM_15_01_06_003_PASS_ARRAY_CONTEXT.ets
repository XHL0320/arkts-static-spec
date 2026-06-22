/**
 * @id SEM_15_01_06_003
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：数组字面量作为独立表达式
 * @note 正向用例：[1, 2, 3] 作为独立表达式推断为 int[]
 */
function main(): void {
    let arr = [1, 2, 3];
    let first: int = arr[0];
    console.log(`${first}`);
}
