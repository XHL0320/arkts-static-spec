/**
 * @id SEM_15_07_01_002_PASS_BOOL_CONST_EXPR
 * @expect compile-pass
 * @section 15.7.1
 * @design 验证布尔常量表达式类型推断：关系运算推断为 boolean
 * @note 正向用例：10 > 5 推断为 boolean
 */
function main(): void {
    let c: boolean = 10 > 5;
    let d: boolean = (3 + 4) == 7;
    console.log(`c=${c}, d=${d}`);
}
