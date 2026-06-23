/**
 * @id EXP_07_21_06_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 long 类型一元负号编译通过。long 结果保持为 long。
 * @note 正向用例：-long 编译通过
 */
function test_long_unary_minus(): void {
    let x: long = 10000000000;
    let y: long = -x;
}
