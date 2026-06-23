/**
 * @id SEM_15_07_01_001_PASS_CONST_EXPR_TYPE
 * @expect compile-pass
 * @section 15.7.1
 * @design 验证常量表达式类型推断：算术常量的类型从操作数推断
 * @note 正向用例：10+20 推断为 int，3.14*2 推断为 double
 */
function main(): void {
    let a: int = 10 + 20;
    let b: double = 3.14 * 2.0;
    console.log(`a=${a}, b=${b}`);
}
