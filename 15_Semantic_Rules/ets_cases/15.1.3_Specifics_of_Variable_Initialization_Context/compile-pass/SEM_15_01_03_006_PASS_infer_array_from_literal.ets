/**
 * @id SEM_15_01_03_006_PASS_infer_array_from_literal
 * @expect compile-pass
 * @section 15.1.3
 * @design 规范示例：数组字面量作为独立表达式推断变量类型
 * @note 正向用例：let y = [1, 2] 推断为 int[]
 */
function main(): void {
    let y = [1, 2];
    let first: int = y[0];
    console.log(`${first}`);
}
