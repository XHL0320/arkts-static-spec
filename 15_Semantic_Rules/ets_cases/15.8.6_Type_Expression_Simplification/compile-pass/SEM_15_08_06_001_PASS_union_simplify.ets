/**
 * @id SEM_15_08_06_001_PASS_union_simplify
 * @expect compile-pass
 * @section 15.8.6
 * @design 类型表达式简化：联合类型简化
 * @note 正向用例：int|int 简化为 int
 */
function main(): void {
    let x: int|int = 42;
    let y: int = x;
    console.log(`${y}`);
}
