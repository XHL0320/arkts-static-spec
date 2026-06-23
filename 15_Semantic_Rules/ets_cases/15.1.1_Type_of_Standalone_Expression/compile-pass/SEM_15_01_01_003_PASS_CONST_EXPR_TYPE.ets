/**
 * @id SEM_15_01_01_003_PASS_CONST_EXPR_TYPE
 * @expect compile-pass
 * @section 15.1.1
 * @design 验证常量表达式的类型从操作数和操作推断
 * @note 正向用例：算术常量表达式应推断为正确的数值类型
 */
function main(): void {
    let a: int = 10 + 20;   // const expr: int + int → int
    let b: double = 3.14 * 2; // const expr: double * int → double
    let c: boolean = 10 > 5; // const expr: relational → boolean
    console.log(`a=${a}, b=${b}, c=${c}`);
}
