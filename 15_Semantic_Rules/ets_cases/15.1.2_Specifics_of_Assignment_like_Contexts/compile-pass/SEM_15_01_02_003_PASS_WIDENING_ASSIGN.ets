/**
 * @id SEM_15_01_02_003_PASS_WIDENING_ASSIGN
 * @expect compile-pass
 * @section 15.1.2
 * @design 验证赋值上下文中数值拓宽：int → double 可赋值
 * @note 正向用例：int 通过数值拓宽可赋值给 double
 */
function main(): void {
    let d: double;
    d = 42;
    console.log(`d=${d}`);
}
