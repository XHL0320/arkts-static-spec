/**
 * @id EXP_07_21_05_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.5
 * @design 验证 double 类型一元正号编译通过。double 结果保持为 double。
 * @note 正向用例：+double 编译通过
 */
function test_double_unary_plus(): void {
    let x: double = 3.14;
    let y: double = +x;
}
