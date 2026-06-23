/**
 * @id SEM_15_04_002_PASS_NUMERIC_WIDENING
 * @expect compile-pass
 * @section 15.4
 * @design 验证数值拓宽可赋值性：int → double
 * @note 正向用例：通过数值拓宽，int 可赋值给 double
 */
function main(): void {
    let i: int = 42;
    let d: double = i;
    console.log(`d=${d}`);
}
