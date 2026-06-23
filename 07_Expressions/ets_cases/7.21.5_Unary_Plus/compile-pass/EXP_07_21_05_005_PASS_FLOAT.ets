/**
 * @id EXP_07_21_05_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.5
 * @design 验证 float 类型一元正号编译通过。float 结果保持为 float。
 * @note 正向用例：+float 编译通过
 */
function test_float_unary_plus(): void {
    let x: float = 1.5 as float;
    let y: float = +x;
}
