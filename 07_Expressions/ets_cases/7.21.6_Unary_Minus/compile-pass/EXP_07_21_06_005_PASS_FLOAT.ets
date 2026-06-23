/**
 * @id EXP_07_21_06_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 float 类型一元负号编译通过。float 结果保持为 float。
 * @note 正向用例：-float 编译通过
 */
function test_float_unary_minus(): void {
    let x: float = 1.5 as float;
    let y: float = -x;
}
