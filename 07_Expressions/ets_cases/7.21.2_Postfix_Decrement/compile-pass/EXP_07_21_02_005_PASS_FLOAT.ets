/**
 * @id EXP_07_21_02_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 float 类型后置递减编译通过。
 * @note 正向用例：float 后置递减编译通过
 */
function test_float_decrement(): void {
    let x: float = 1.5 as float;
    x--;
}
