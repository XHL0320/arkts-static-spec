/**
 * @id SEM_15_14_100
 * @expect compile-pass
 * @section 15.14
 * @design 兼容特性基础
 * @note 正向用例
 */
function main(): void {
    let x: int|string = 42;
    let y: string|int = x;
    console.log(`${y}`);
}
