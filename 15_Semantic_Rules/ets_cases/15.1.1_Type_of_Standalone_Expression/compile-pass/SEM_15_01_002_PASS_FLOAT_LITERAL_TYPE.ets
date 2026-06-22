/**
 * @id SEM_15_01_002
 * @expect compile-pass
 * @section 15.1.1
 * @design 验证独立浮点字面量推断为 double 类型
 * @note 正向用例：3.14 作为独立表达式应推断为 double 类型
 */
function main(): void {
    let x = 3.14;           // inferred as double
    let y: double = x;      // assignable to double
    console.log(`x=${x}, y=${y}`);
}
