/**
 * @id SEM_15_01_001
 * @expect compile-pass
 * @section 15.1.1
 * @design 验证独立整数字面量推断为 int 类型
 * @note 正向用例：42 作为独立表达式应推断为 int 类型
 */
function main(): void {
    let x = 42;             // inferred as int
    let y: int = x;         // assignable to int
    console.log(`x=${x}, y=${y}`);
}
