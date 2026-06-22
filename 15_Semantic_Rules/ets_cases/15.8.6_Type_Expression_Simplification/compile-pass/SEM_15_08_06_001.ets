/**
 * @id SEM_15_08_06_001
 * @expect compile-pass
 * @section 15.8.6
 * @design 类型表达式简化：联合类型简化
 * @note 正向用例
 */
function main(): void {
    let x: int|int = 42;
    let y: int = x;
    console.log(`${y}`);
}
