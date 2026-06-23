/**
 * @id EXP_07_21_04_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 float 类型前置递减编译通过。
 * @note 正向用例：float 前置递减
 */
function test_float_predec(): void {
    let x: float = 1.5 as float;
    --x;
}
