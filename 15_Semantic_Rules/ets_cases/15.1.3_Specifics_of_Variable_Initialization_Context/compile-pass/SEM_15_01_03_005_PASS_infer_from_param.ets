/**
 * @id SEM_15_01_03_005_PASS_infer_from_param
 * @expect compile-pass
 * @section 15.1.3
 * @design 规范示例：从已知类型的表达式推断变量类型
 * @note 正向用例：let y = x 中 x 类型为 int，y 推断为 int
 */
function foo(x: int): void {
    let y = x;
    let z: int = y;
    console.log(`${z}`);
}
function main(): void {
    foo(42);
}
